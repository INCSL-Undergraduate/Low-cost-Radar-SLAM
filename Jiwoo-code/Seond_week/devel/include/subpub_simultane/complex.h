// Generated by gencpp from file subpub_simultane/complex.msg
// DO NOT EDIT!


#ifndef SUBPUB_SIMULTANE_MESSAGE_COMPLEX_H
#define SUBPUB_SIMULTANE_MESSAGE_COMPLEX_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace subpub_simultane
{
template <class ContainerAllocator>
struct complex_
{
  typedef complex_<ContainerAllocator> Type;

  complex_()
    : real(0.0)
    , imaginray(0.0)  {
    }
  complex_(const ContainerAllocator& _alloc)
    : real(0.0)
    , imaginray(0.0)  {
  (void)_alloc;
    }



   typedef float _real_type;
  _real_type real;

   typedef float _imaginray_type;
  _imaginray_type imaginray;





  typedef boost::shared_ptr< ::subpub_simultane::complex_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::subpub_simultane::complex_<ContainerAllocator> const> ConstPtr;

}; // struct complex_

typedef ::subpub_simultane::complex_<std::allocator<void> > complex;

typedef boost::shared_ptr< ::subpub_simultane::complex > complexPtr;
typedef boost::shared_ptr< ::subpub_simultane::complex const> complexConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::subpub_simultane::complex_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::subpub_simultane::complex_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::subpub_simultane::complex_<ContainerAllocator1> & lhs, const ::subpub_simultane::complex_<ContainerAllocator2> & rhs)
{
  return lhs.real == rhs.real &&
    lhs.imaginray == rhs.imaginray;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::subpub_simultane::complex_<ContainerAllocator1> & lhs, const ::subpub_simultane::complex_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace subpub_simultane

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::subpub_simultane::complex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::subpub_simultane::complex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::subpub_simultane::complex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::subpub_simultane::complex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::subpub_simultane::complex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::subpub_simultane::complex_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::subpub_simultane::complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c61ad788bc5613f5fbb09120ab3bfc8a";
  }

  static const char* value(const ::subpub_simultane::complex_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc61ad788bc5613f5ULL;
  static const uint64_t static_value2 = 0xfbb09120ab3bfc8aULL;
};

template<class ContainerAllocator>
struct DataType< ::subpub_simultane::complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "subpub_simultane/complex";
  }

  static const char* value(const ::subpub_simultane::complex_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::subpub_simultane::complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 real\n"
"float32 imaginray\n"
"\n"
;
  }

  static const char* value(const ::subpub_simultane::complex_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::subpub_simultane::complex_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.real);
      stream.next(m.imaginray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct complex_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::subpub_simultane::complex_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::subpub_simultane::complex_<ContainerAllocator>& v)
  {
    s << indent << "real: ";
    Printer<float>::stream(s, indent + "  ", v.real);
    s << indent << "imaginray: ";
    Printer<float>::stream(s, indent + "  ", v.imaginray);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUBPUB_SIMULTANE_MESSAGE_COMPLEX_H
