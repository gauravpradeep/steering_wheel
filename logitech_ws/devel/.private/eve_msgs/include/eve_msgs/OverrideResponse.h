// Generated by gencpp from file eve_msgs/OverrideResponse.msg
// DO NOT EDIT!


#ifndef EVE_MSGS_MESSAGE_OVERRIDERESPONSE_H
#define EVE_MSGS_MESSAGE_OVERRIDERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace eve_msgs
{
template <class ContainerAllocator>
struct OverrideResponse_
{
  typedef OverrideResponse_<ContainerAllocator> Type;

  OverrideResponse_()
    : status(false)  {
    }
  OverrideResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::eve_msgs::OverrideResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::eve_msgs::OverrideResponse_<ContainerAllocator> const> ConstPtr;

}; // struct OverrideResponse_

typedef ::eve_msgs::OverrideResponse_<std::allocator<void> > OverrideResponse;

typedef boost::shared_ptr< ::eve_msgs::OverrideResponse > OverrideResponsePtr;
typedef boost::shared_ptr< ::eve_msgs::OverrideResponse const> OverrideResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::eve_msgs::OverrideResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::eve_msgs::OverrideResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::eve_msgs::OverrideResponse_<ContainerAllocator1> & lhs, const ::eve_msgs::OverrideResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::eve_msgs::OverrideResponse_<ContainerAllocator1> & lhs, const ::eve_msgs::OverrideResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace eve_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eve_msgs::OverrideResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eve_msgs::OverrideResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eve_msgs::OverrideResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::eve_msgs::OverrideResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eve_msgs/OverrideResponse";
  }

  static const char* value(const ::eve_msgs::OverrideResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n"
;
  }

  static const char* value(const ::eve_msgs::OverrideResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OverrideResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::eve_msgs::OverrideResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::eve_msgs::OverrideResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EVE_MSGS_MESSAGE_OVERRIDERESPONSE_H
