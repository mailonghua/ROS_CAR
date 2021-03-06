// Generated by gencpp from file world_canvas_msgs/DeleteAnnotations.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_DELETEANNOTATIONS_H
#define WORLD_CANVAS_MSGS_MESSAGE_DELETEANNOTATIONS_H

#include <ros/service_traits.h>


#include <world_canvas_msgs/DeleteAnnotationsRequest.h>
#include <world_canvas_msgs/DeleteAnnotationsResponse.h>


namespace world_canvas_msgs
{

struct DeleteAnnotations
{

typedef DeleteAnnotationsRequest Request;
typedef DeleteAnnotationsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DeleteAnnotations
} // namespace world_canvas_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::world_canvas_msgs::DeleteAnnotations > {
  static const char* value()
  {
    return "cb16788c25593f2ef5fac1d356f16833";
  }

  static const char* value(const ::world_canvas_msgs::DeleteAnnotations&) { return value(); }
};

template<>
struct DataType< ::world_canvas_msgs::DeleteAnnotations > {
  static const char* value()
  {
    return "world_canvas_msgs/DeleteAnnotations";
  }

  static const char* value(const ::world_canvas_msgs::DeleteAnnotations&) { return value(); }
};


// service_traits::MD5Sum< ::world_canvas_msgs::DeleteAnnotationsRequest> should match
// service_traits::MD5Sum< ::world_canvas_msgs::DeleteAnnotations >
template<>
struct MD5Sum< ::world_canvas_msgs::DeleteAnnotationsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::world_canvas_msgs::DeleteAnnotations >::value();
  }
  static const char* value(const ::world_canvas_msgs::DeleteAnnotationsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_canvas_msgs::DeleteAnnotationsRequest> should match
// service_traits::DataType< ::world_canvas_msgs::DeleteAnnotations >
template<>
struct DataType< ::world_canvas_msgs::DeleteAnnotationsRequest>
{
  static const char* value()
  {
    return DataType< ::world_canvas_msgs::DeleteAnnotations >::value();
  }
  static const char* value(const ::world_canvas_msgs::DeleteAnnotationsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::world_canvas_msgs::DeleteAnnotationsResponse> should match
// service_traits::MD5Sum< ::world_canvas_msgs::DeleteAnnotations >
template<>
struct MD5Sum< ::world_canvas_msgs::DeleteAnnotationsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::world_canvas_msgs::DeleteAnnotations >::value();
  }
  static const char* value(const ::world_canvas_msgs::DeleteAnnotationsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_canvas_msgs::DeleteAnnotationsResponse> should match
// service_traits::DataType< ::world_canvas_msgs::DeleteAnnotations >
template<>
struct DataType< ::world_canvas_msgs::DeleteAnnotationsResponse>
{
  static const char* value()
  {
    return DataType< ::world_canvas_msgs::DeleteAnnotations >::value();
  }
  static const char* value(const ::world_canvas_msgs::DeleteAnnotationsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_DELETEANNOTATIONS_H
