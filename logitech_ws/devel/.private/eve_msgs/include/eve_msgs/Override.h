// Generated by gencpp from file eve_msgs/Override.msg
// DO NOT EDIT!


#ifndef EVE_MSGS_MESSAGE_OVERRIDE_H
#define EVE_MSGS_MESSAGE_OVERRIDE_H

#include <ros/service_traits.h>


#include <eve_msgs/OverrideRequest.h>
#include <eve_msgs/OverrideResponse.h>


namespace eve_msgs
{

struct Override
{

typedef OverrideRequest Request;
typedef OverrideResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Override
} // namespace eve_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::eve_msgs::Override > {
  static const char* value()
  {
    return "29cdd02e1e856c7f99b046d6ef4a7a75";
  }

  static const char* value(const ::eve_msgs::Override&) { return value(); }
};

template<>
struct DataType< ::eve_msgs::Override > {
  static const char* value()
  {
    return "eve_msgs/Override";
  }

  static const char* value(const ::eve_msgs::Override&) { return value(); }
};


// service_traits::MD5Sum< ::eve_msgs::OverrideRequest> should match
// service_traits::MD5Sum< ::eve_msgs::Override >
template<>
struct MD5Sum< ::eve_msgs::OverrideRequest>
{
  static const char* value()
  {
    return MD5Sum< ::eve_msgs::Override >::value();
  }
  static const char* value(const ::eve_msgs::OverrideRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::eve_msgs::OverrideRequest> should match
// service_traits::DataType< ::eve_msgs::Override >
template<>
struct DataType< ::eve_msgs::OverrideRequest>
{
  static const char* value()
  {
    return DataType< ::eve_msgs::Override >::value();
  }
  static const char* value(const ::eve_msgs::OverrideRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::eve_msgs::OverrideResponse> should match
// service_traits::MD5Sum< ::eve_msgs::Override >
template<>
struct MD5Sum< ::eve_msgs::OverrideResponse>
{
  static const char* value()
  {
    return MD5Sum< ::eve_msgs::Override >::value();
  }
  static const char* value(const ::eve_msgs::OverrideResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::eve_msgs::OverrideResponse> should match
// service_traits::DataType< ::eve_msgs::Override >
template<>
struct DataType< ::eve_msgs::OverrideResponse>
{
  static const char* value()
  {
    return DataType< ::eve_msgs::Override >::value();
  }
  static const char* value(const ::eve_msgs::OverrideResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EVE_MSGS_MESSAGE_OVERRIDE_H
