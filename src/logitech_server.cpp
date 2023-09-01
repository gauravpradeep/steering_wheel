//
// Created by phoenix-slayr on 9/19/19.
//

#include <arpa/inet.h>
#include <thread>
#include <string.h>
#include <jsoncpp/json/json.h>

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <eve_msgs/Status.h>
#include <eve_msgs/Acceleration.h>
#include <eve_msgs/Brake.h>
#include <eve_msgs/Steering.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Header.h>
#include <std_msgs/Int32.h>
#include <eve_msgs/Override.h>
#include <eve_msgs/Gear.h>
#include <eve_msgs/Horn.h>
#include <eve_msgs/Wiper.h>
#include <eve_msgs/Headlight.h>


#include <geometry_msgs/Twist.h>

#define SERVER_PORT 1338

class LogitechServer
{
 private:
  int newfd = -1 ;
  Json::Value recieve_json_value;
  Json::Reader reader;
  int curr_driving_mode = 0;
  ros::NodeHandle n, nh;
  ros::Publisher accel_pub, steering_pub, brake_pub, wheel_angle_pub;
  ros::Subscriber eve_status_sub;
  eve_msgs::Acceleration eveDriveAcceleration;
  eve_msgs::Steering eveDriveSteer;
  eve_msgs::Steering logitechWheelAngle;
  eve_msgs::Brake eveDriveBrake;
  ros::ServiceClient driving_mode_client_acceleration;
  ros::ServiceClient driving_mode_client_steering;
  ros::ServiceClient gear_client;
  ros::ServiceClient headlight_client;
  ros::ServiceClient horn_client;
  ros::ServiceClient wiper_client;
  ros::ServiceServer acceleration_control_server;
  ros::ServiceServer steering_control_server;

  uint8_t curr_gear = 1;
  uint8_t curr_headlight = 0;
  bool curr_horn = false;
  uint8_t curr_wiper = 0;

  enum ControlAccess {
    REQUEST_CONTROL,
    RELEASE_CONTROL,
    RESUME_CONTROL,
    CONTROLLER_EXIT
    };

  bool control_access_acceleration;
  bool control_access_steering;

  char *final_json_string;

 public:
  LogitechServer()  {
    accel_pub = nh.advertise<eve_msgs::Acceleration>("eve/acceleration", 1);
    steering_pub = nh.advertise<eve_msgs::Steering>("eve/steering", 1);
    wheel_angle_pub = nh.advertise<eve_msgs::Steering>("eve/wheel_angle", 1);
    brake_pub = nh.advertise<eve_msgs::Brake>("eve/brake", 1);
    driving_mode_client_acceleration = n.serviceClient<eve_msgs::Override>("eve/priority_switcher/acceleration");
    driving_mode_client_steering = n.serviceClient<eve_msgs::Override>("eve/priority_switcher/steering");
    gear_client = n.serviceClient<eve_msgs::Gear>("eve/gear");
    headlight_client = n.serviceClient<eve_msgs::Headlight>("eve/headlight");
    horn_client = n.serviceClient<eve_msgs::Horn>("eve/horn");
    wiper_client = n.serviceClient<eve_msgs::Wiper>("eve/wiper"); 
    control_access_acceleration = false;
    control_access_steering = false;
  }

  void read_steering_values() {
    eve_msgs::Override driving_mode_srv;
    eve_msgs::Gear gear_srv;
    eve_msgs::Headlight headlight_srv;
    eve_msgs::Horn horn_srv;
    eve_msgs::Wiper wiper_srv;
    while(ros::ok())
    {
      char read_from_json[10000];
      int read_check = read(newfd, read_from_json, sizeof(read_from_json) - 1);
      std::stringstream write_json_stream;
      if (read_check == -1)
      {
        ROS_INFO("Reading from Js Server Failed");
      }
      else
      {
        bool parsingSuccessful = reader.parse(read_from_json, recieve_json_value);

        std_msgs::Header header;
        header.stamp = ros::Time::now();
        eveDriveAcceleration.header = header;
        eveDriveBrake.header = header;

        eveDriveSteer.steering_angle = recieve_json_value.get("steer", 0).asFloat();
        eveDriveSteer.header.stamp = ros::Time::now();
        logitechWheelAngle.steering_angle = recieve_json_value.get("wheel_angle", 0).asFloat();
        logitechWheelAngle.header.stamp = ros::Time::now();
        eveDriveSteer.indicator = recieve_json_value.get("indicator", 0).asInt();

        eveDriveAcceleration.percentage = recieve_json_value.get("acceleration", 0).asFloat();
        eveDriveAcceleration.header.stamp = ros::Time::now();

        eveDriveBrake.percentage = recieve_json_value.get("brake", 0).asFloat();
        eveDriveBrake.header.stamp = ros::Time::now();
//		std::cout<<recieve_json_value.get("driving_mode", 0).asInt()<<" i  am printing this value"<<"\n";
        if(curr_driving_mode != recieve_json_value.get("driving_mode", 0).asInt())
        {
          curr_driving_mode = recieve_json_value.get("driving_mode", 0).asInt();
          driving_mode_srv.request.controller.data = "LOGITECH_STEERING";

          if(curr_driving_mode == 1)
          {
            driving_mode_srv.request.type = REQUEST_CONTROL; // Request Priority Switcher for Control
          }
          else
          {
            driving_mode_srv.request.type = CONTROLLER_EXIT; // Request Priority Switcher to Release Control
          }

          if(driving_mode_client_acceleration.call(driving_mode_srv))
          {
            if(curr_driving_mode == 1)
            {
              ROS_INFO("[ACCELERATION]\tOVERRIDE SUCCESSSFUL");
              this->control_access_acceleration = true;
            } else{
              ROS_INFO("[ACCELERATION]\tCONTROLLER EXIT SUCCESSFUL");
              this->control_access_acceleration = false;
            }
          }
          else {
            ROS_ERROR("[ACCELERATION]\tOVERRIDE ERROR");
            this->control_access_acceleration = false;
          }

          if(driving_mode_client_steering.call(driving_mode_srv))
          {
            if(curr_driving_mode == 1)
            {
              ROS_INFO("[STEERING]\tOVERRIDE SUCCESSSFUL");
              this->control_access_steering = true;
            } else{
              ROS_INFO("[STEERING]\tCONTROLLER EXIT SUCCESSFUL");
            }
          }
          else {
            ROS_ERROR("[STEERING]\tOVERRIDE ERROR");
            this->control_access_steering = false;
          }
        }
        if(curr_gear != recieve_json_value.get("gear", 1).asInt())
        {
          curr_gear = recieve_json_value.get("gear", 1).asInt();
          gear_srv.request.mode = curr_gear;
          if(gear_client.call(gear_srv))
          {
            ROS_INFO("Gear Shifted to %d", curr_gear);
          }
          else
          {
            ROS_INFO("FAILED TO SHIFT GEARS");
          }
        }
        if(curr_headlight != recieve_json_value.get("headlight", 0).asInt())
        {
          curr_headlight = recieve_json_value.get("headlight", 0).asInt();
          headlight_srv.request.state = curr_headlight;
          if(headlight_client.call(headlight_srv))
          {
            ROS_INFO("Headlight Shifted to STATE %d", curr_headlight);
          }
          else
          {
            ROS_ERROR("FAILED TO CHANGE STATE OF HEADLIGHTS");
          }
        }
        if(curr_horn != recieve_json_value.get("horn", false).asBool())
        {
          curr_horn = recieve_json_value.get("horn", false).asBool();
          horn_srv.request.state = curr_horn;
          if(horn_client.call(horn_srv))
          {
            ROS_INFO("HORN");
          }
          else
          {
            ROS_ERROR("FAILED TO CHANGE THE STATE OF HORN");
          }
        }
        if(curr_wiper != recieve_json_value.get("wiper", 0).asInt())
        {
          curr_wiper = recieve_json_value.get("wiper", 0).asInt();
          wiper_srv.request.state = curr_wiper;
          if(wiper_client.call(wiper_srv))
          {
            ROS_INFO("Wiper Shifted to STATE %d", curr_wiper);
          }
          else
          {
            ROS_ERROR("FAILED TO CHANGE STATE OF WIPERS");
          }
        }

        if(curr_driving_mode == 1)
        {
          if(control_access_acceleration) {
            accel_pub.publish(eveDriveAcceleration);
            brake_pub.publish(eveDriveBrake);
          }
          if(control_access_steering) {
            steering_pub.publish(eveDriveSteer);
            wheel_angle_pub.publish(logitechWheelAngle);
          }
        }
      }
    }
  }

  bool controlAccessSteering(eve_msgs::Override::Request &req, eve_msgs::Override::Response &res) {

    if(req.controller.data == "PRIORITY_SWITCHER" && req.type == ControlAccess::RELEASE_CONTROL) {
      ROS_INFO("RELEASE SUCCESSFUL");
      this->control_access_steering = false;
      res.status = true;
      return true;
    }

    if(req.controller.data == "PRIORITY_SWITCHER" && req.type == ControlAccess::RESUME_CONTROL) {
      ROS_INFO("RESUMING LOGITECH STEERING");
      this->control_access_steering = true;
      res.status = true;
      return true;
    }

    res.status = false;
    return false;
  }

    bool controlAccessAcceleration(eve_msgs::Override::Request &req, eve_msgs::Override::Response &res) {

    if(req.controller.data == "PRIORITY_SWITCHER" && req.type == ControlAccess::RELEASE_CONTROL) {
      ROS_INFO("RELEASE SUCCESSFUL");
      this->control_access_steering = false;
      res.status = true;
      return true;
    }

    if(req.controller.data == "PRIORITY_SWITCHER" && req.type == ControlAccess::RESUME_CONTROL) {
      ROS_INFO("RESUMING LOGITECH STEERING");
      this->control_access_steering = true;
      res.status = true;
      return true;
    }

    res.status = false;
    return false;
  }

  void write_to_logitech_steering(const eve_msgs::Status::ConstPtr &msg)
  {
    std::stringstream write_to_logitech_stream;
    write_to_logitech_stream << "{ " <<" \"steer\" : " << std::to_string(msg->steering_angle) <<
                                ", \"acceleration\" : " << std::to_string(msg->acceleration) <<
                                ", \"brake\" : " << std::to_string(msg->brake) << " }\n ";
    final_json_string = new char[write_to_logitech_stream.str().length() + 1];
    // ROS_INFO("%s", write_to_logitech_stream.str().c_str());
    strcpy(final_json_string, write_to_logitech_stream.str().c_str());
    if(write(newfd, final_json_string, strlen(final_json_string)) == -1)
    {
      ROS_ERROR("Error Writing to Js Client");
      return;
    }
  }

  void run()
  {
    eve_status_sub = n.subscribe("eve/status", 1, &LogitechServer::write_to_logitech_steering, this);
    acceleration_control_server = n.advertiseService("/eve/priority_switcher/control_access/acceleration/logitech_steering", &LogitechServer::controlAccessAcceleration, this);

    // TODO (Anshu-man567) : confirm that error arised because steering control switcher was never activated
//    steering_control_server = n.advertiseService("/eve/priority_switcher/control_access/steering/logitech_steering", &LogitechServer::controlAccessSteering, this);
  }
  void update_newfd(int newfd)
  {
    this->newfd = newfd;
  }
};

int main(int argc, char **argv)
{
  int server_sock;
  int newfd = -1;
  int bindfd = -1;
  server_sock = socket(AF_INET, SOCK_STREAM, 0);
  sockaddr_in server_address, cli_adder;
  int opt = 1;
  if (setsockopt(server_sock, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt,
                 sizeof(opt))) {
    ROS_ERROR("ERROR SETTING UP THE SERVER SOCKET");
    return 1;
  }
  ROS_INFO("ATTEMPTING TO BIND SERVER WITH CLIENT");
  server_address.sin_family = AF_INET;
  server_address.sin_port = htons(SERVER_PORT);
  server_address.sin_addr.s_addr = INADDR_ANY;
  if ((bindfd = bind(server_sock, (struct sockaddr *)&server_address,
                     sizeof(struct sockaddr))) < 0) {
    ROS_ERROR("ERROR IN BINDING LOGITECH CLIENT");
    return 1;
  }
  ROS_INFO("BINDING COMPLETE");
  ros::init(argc, argv, "Logitech_Server");
  LogitechServer g29_wheel;
  ROS_INFO("WAITING FOR LOGITECH CLIENT TO CONNECT");
  if (listen(server_sock, 1) < 0) {
    ROS_ERROR("TIMED OUT WHILE CONNECTING TO LOGITECH CLIENT");
    close(bindfd);
    return 1;
  }

  int clilen = sizeof(cli_adder);
  while (newfd < 0) {
    newfd = accept(server_sock, (struct sockaddr *)&cli_adder,
                   (socklen_t *)&clilen);
    g29_wheel.update_newfd(newfd);
  }
  ROS_INFO("CONNECTION WITH LOGITECH STEERING WHEEL ESTABILISHED");
  std::thread read_thread(&LogitechServer::read_steering_values, g29_wheel);
  ros::Rate rate(20);
  g29_wheel.run();
  while (ros::ok())
  {
    rate.sleep();
    ros::spinOnce();
  }
  read_thread.join();
  close(newfd);
  close(bindfd);
  return 0;
}
