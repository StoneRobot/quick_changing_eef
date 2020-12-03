// Generated by gencpp from file quick_changing_eef/ObjectPose.msg
// DO NOT EDIT!


#ifndef QUICK_CHANGING_EEF_MESSAGE_OBJECTPOSE_H
#define QUICK_CHANGING_EEF_MESSAGE_OBJECTPOSE_H

#include <ros/service_traits.h>


#include <quick_changing_eef/ObjectPoseRequest.h>
#include <quick_changing_eef/ObjectPoseResponse.h>


namespace quick_changing_eef
{

struct ObjectPose
{

typedef ObjectPoseRequest Request;
typedef ObjectPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ObjectPose
} // namespace quick_changing_eef


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::quick_changing_eef::ObjectPose > {
  static const char* value()
  {
    return "06db6cf8b9cbae300f41698097de40c6";
  }

  static const char* value(const ::quick_changing_eef::ObjectPose&) { return value(); }
};

template<>
struct DataType< ::quick_changing_eef::ObjectPose > {
  static const char* value()
  {
    return "quick_changing_eef/ObjectPose";
  }

  static const char* value(const ::quick_changing_eef::ObjectPose&) { return value(); }
};


// service_traits::MD5Sum< ::quick_changing_eef::ObjectPoseRequest> should match 
// service_traits::MD5Sum< ::quick_changing_eef::ObjectPose > 
template<>
struct MD5Sum< ::quick_changing_eef::ObjectPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::quick_changing_eef::ObjectPose >::value();
  }
  static const char* value(const ::quick_changing_eef::ObjectPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::quick_changing_eef::ObjectPoseRequest> should match 
// service_traits::DataType< ::quick_changing_eef::ObjectPose > 
template<>
struct DataType< ::quick_changing_eef::ObjectPoseRequest>
{
  static const char* value()
  {
    return DataType< ::quick_changing_eef::ObjectPose >::value();
  }
  static const char* value(const ::quick_changing_eef::ObjectPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::quick_changing_eef::ObjectPoseResponse> should match 
// service_traits::MD5Sum< ::quick_changing_eef::ObjectPose > 
template<>
struct MD5Sum< ::quick_changing_eef::ObjectPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::quick_changing_eef::ObjectPose >::value();
  }
  static const char* value(const ::quick_changing_eef::ObjectPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::quick_changing_eef::ObjectPoseResponse> should match 
// service_traits::DataType< ::quick_changing_eef::ObjectPose > 
template<>
struct DataType< ::quick_changing_eef::ObjectPoseResponse>
{
  static const char* value()
  {
    return DataType< ::quick_changing_eef::ObjectPose >::value();
  }
  static const char* value(const ::quick_changing_eef::ObjectPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QUICK_CHANGING_EEF_MESSAGE_OBJECTPOSE_H
