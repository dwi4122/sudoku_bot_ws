// Generated by gencpp from file mover_arm_joints/move_and_confirmRequest.msg
// DO NOT EDIT!


#ifndef MOVER_ARM_JOINTS_MESSAGE_MOVE_AND_CONFIRMREQUEST_H
#define MOVER_ARM_JOINTS_MESSAGE_MOVE_AND_CONFIRMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mover_arm_joints
{
template <class ContainerAllocator>
struct move_and_confirmRequest_
{
  typedef move_and_confirmRequest_<ContainerAllocator> Type;

  move_and_confirmRequest_()
    : move(0.0)
    , confirm(0.0)  {
    }
  move_and_confirmRequest_(const ContainerAllocator& _alloc)
    : move(0.0)
    , confirm(0.0)  {
  (void)_alloc;
    }



   typedef double _move_type;
  _move_type move;

   typedef double _confirm_type;
  _confirm_type confirm;





  typedef boost::shared_ptr< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct move_and_confirmRequest_

typedef ::mover_arm_joints::move_and_confirmRequest_<std::allocator<void> > move_and_confirmRequest;

typedef boost::shared_ptr< ::mover_arm_joints::move_and_confirmRequest > move_and_confirmRequestPtr;
typedef boost::shared_ptr< ::mover_arm_joints::move_and_confirmRequest const> move_and_confirmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator1> & lhs, const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator2> & rhs)
{
  return lhs.move == rhs.move &&
    lhs.confirm == rhs.confirm;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator1> & lhs, const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mover_arm_joints

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d3996e189f231d649f823398a7475c7d";
  }

  static const char* value(const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3996e189f231d64ULL;
  static const uint64_t static_value2 = 0x9f823398a7475c7dULL;
};

template<class ContainerAllocator>
struct DataType< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mover_arm_joints/move_and_confirmRequest";
  }

  static const char* value(const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 move\n"
"float64 confirm\n"
"\n"
;
  }

  static const char* value(const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.move);
      stream.next(m.confirm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct move_and_confirmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mover_arm_joints::move_and_confirmRequest_<ContainerAllocator>& v)
  {
    s << indent << "move: ";
    Printer<double>::stream(s, indent + "  ", v.move);
    s << indent << "confirm: ";
    Printer<double>::stream(s, indent + "  ", v.confirm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVER_ARM_JOINTS_MESSAGE_MOVE_AND_CONFIRMREQUEST_H
