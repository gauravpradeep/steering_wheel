// Generated by gencpp from file eve_msgs/Gear.msg
// DO NOT EDIT!


#ifndef EVE_MSGS_MESSAGE_GEAR_H
#define EVE_MSGS_MESSAGE_GEAR_H

#include <ros/service_traits.h>


#include <eve_msgs/GearRequest.h>
#include <eve_msgs/GearResponse.h>


namespace eve_msgs
{

struct Gear
{

typedef GearRequest Request;
typedef GearResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Gear
} // namespace eve_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::eve_msgs::Gear > {
  static const char* value()
  {
    return "89b81386720be1cd0ce7a3953fcd1b19";
  }

  static const char* value(const ::eve_msgs::Gear&) { return value(); }
};

template<>
struct DataType< ::eve_msgs::Gear > {
  static const char* value()
  {
    return "eve_msgs/Gear";
  }

  static const char* value(const ::eve_msgs::Gear&) { return value(); }
};


// service_traits::MD5Sum< ::eve_msgs::GearRequest> should match
// service_traits::MD5Sum< ::eve_msgs::Gear >
template<>
struct MD5Sum< ::eve_msgs::GearRequest>
{
  static const char* value()
  {
    return MD5Sum< ::eve_msgs::Gear >::value();
  }
  static const char* value(const ::eve_msgs::GearRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::eve_msgs::GearRequest> should match
// service_traits::DataType< ::eve_msgs::Gear >
template<>
struct DataType< ::eve_msgs::GearRequest>
{
  static const char* value()
  {
    return DataType< ::eve_msgs::Gear >::value();
  }
  static const char* value(const ::eve_msgs::GearRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::eve_msgs::GearResponse> should match
// service_traits::MD5Sum< ::eve_msgs::Gear >
template<>
struct MD5Sum< ::eve_msgs::GearResponse>
{
  static const char* value()
  {
    return MD5Sum< ::eve_msgs::Gear >::value();
  }
  static const char* value(const ::eve_msgs::GearResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::eve_msgs::GearResponse> should match
// service_traits::DataType< ::eve_msgs::Gear >
template<>
struct DataType< ::eve_msgs::GearResponse>
{
  static const char* value()
  {
    return DataType< ::eve_msgs::Gear >::value();
  }
  static const char* value(const ::eve_msgs::GearResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EVE_MSGS_MESSAGE_GEAR_H