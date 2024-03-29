// Generated by gencpp from file demo_package/AddTwoInts.msg
// DO NOT EDIT!


#ifndef DEMO_PACKAGE_MESSAGE_ADDTWOINTS_H
#define DEMO_PACKAGE_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <demo_package/AddTwoIntsRequest.h>
#include <demo_package/AddTwoIntsResponse.h>


namespace demo_package
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace demo_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::demo_package::AddTwoInts > {
  static const char* value()
  {
    return "65195ed2ab3a9b46e6b1bc2c5421f933";
  }

  static const char* value(const ::demo_package::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::demo_package::AddTwoInts > {
  static const char* value()
  {
    return "demo_package/AddTwoInts";
  }

  static const char* value(const ::demo_package::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::demo_package::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::demo_package::AddTwoInts >
template<>
struct MD5Sum< ::demo_package::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::demo_package::AddTwoInts >::value();
  }
  static const char* value(const ::demo_package::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_package::AddTwoIntsRequest> should match
// service_traits::DataType< ::demo_package::AddTwoInts >
template<>
struct DataType< ::demo_package::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::demo_package::AddTwoInts >::value();
  }
  static const char* value(const ::demo_package::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::demo_package::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::demo_package::AddTwoInts >
template<>
struct MD5Sum< ::demo_package::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::demo_package::AddTwoInts >::value();
  }
  static const char* value(const ::demo_package::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_package::AddTwoIntsResponse> should match
// service_traits::DataType< ::demo_package::AddTwoInts >
template<>
struct DataType< ::demo_package::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::demo_package::AddTwoInts >::value();
  }
  static const char* value(const ::demo_package::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DEMO_PACKAGE_MESSAGE_ADDTWOINTS_H
