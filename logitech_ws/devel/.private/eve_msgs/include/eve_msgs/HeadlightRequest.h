// Generated by gencpp from file eve_msgs/HeadlightRequest.msg
// DO NOT EDIT!


#ifndef EVE_MSGS_MESSAGE_HEADLIGHTREQUEST_H
#define EVE_MSGS_MESSAGE_HEADLIGHTREQUEST_H


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
struct HeadlightRequest_
{
  typedef HeadlightRequest_<ContainerAllocator> Type;

  HeadlightRequest_()
    : state(0)  {
    }
  HeadlightRequest_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::eve_msgs::HeadlightRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::eve_msgs::HeadlightRequest_<ContainerAllocator> const> ConstPtr;

}; // struct HeadlightRequest_

typedef ::eve_msgs::HeadlightRequest_<std::allocator<void> > HeadlightRequest;

typedef boost::shared_ptr< ::eve_msgs::HeadlightRequest > HeadlightRequestPtr;
typedef boost::shared_ptr< ::eve_msgs::HeadlightRequest const> HeadlightRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::eve_msgs::HeadlightRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::eve_msgs::HeadlightRequest_<ContainerAllocator1> & lhs, const ::eve_msgs::HeadlightRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::eve_msgs::HeadlightRequest_<ContainerAllocator1> & lhs, const ::eve_msgs::HeadlightRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace eve_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eve_msgs::HeadlightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eve_msgs::HeadlightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eve_msgs::HeadlightRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "800f34bc468def1d86e2d42bea5648c0";
  }

  static const char* value(const ::eve_msgs::HeadlightRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x800f34bc468def1dULL;
  static const uint64_t static_value2 = 0x86e2d42bea5648c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eve_msgs/HeadlightRequest";
  }

  static const char* value(const ::eve_msgs::HeadlightRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 0 OFF\n"
"# 1 LOW BEAM\n"
"# 2 HIGH BEAM\n"
"\n"
"uint8 state\n"
;
  }

  static const char* value(const ::eve_msgs::HeadlightRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HeadlightRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::eve_msgs::HeadlightRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::eve_msgs::HeadlightRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EVE_MSGS_MESSAGE_HEADLIGHTREQUEST_H
