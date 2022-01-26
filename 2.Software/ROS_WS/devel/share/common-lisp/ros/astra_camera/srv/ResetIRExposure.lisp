; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude ResetIRExposure-request.msg.html

(cl:defclass <ResetIRExposure-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetIRExposure-request (<ResetIRExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetIRExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetIRExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<ResetIRExposure-request> is deprecated: use astra_camera-srv:ResetIRExposure-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetIRExposure-request>) ostream)
  "Serializes a message object of type '<ResetIRExposure-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetIRExposure-request>) istream)
  "Deserializes a message object of type '<ResetIRExposure-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetIRExposure-request>)))
  "Returns string type for a service object of type '<ResetIRExposure-request>"
  "astra_camera/ResetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRExposure-request)))
  "Returns string type for a service object of type 'ResetIRExposure-request"
  "astra_camera/ResetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetIRExposure-request>)))
  "Returns md5sum for a message object of type '<ResetIRExposure-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetIRExposure-request)))
  "Returns md5sum for a message object of type 'ResetIRExposure-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetIRExposure-request>)))
  "Returns full string definition for message of type '<ResetIRExposure-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetIRExposure-request)))
  "Returns full string definition for message of type 'ResetIRExposure-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetIRExposure-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetIRExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetIRExposure-request
))
;//! \htmlinclude ResetIRExposure-response.msg.html

(cl:defclass <ResetIRExposure-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetIRExposure-response (<ResetIRExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetIRExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetIRExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<ResetIRExposure-response> is deprecated: use astra_camera-srv:ResetIRExposure-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetIRExposure-response>) ostream)
  "Serializes a message object of type '<ResetIRExposure-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetIRExposure-response>) istream)
  "Deserializes a message object of type '<ResetIRExposure-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetIRExposure-response>)))
  "Returns string type for a service object of type '<ResetIRExposure-response>"
  "astra_camera/ResetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRExposure-response)))
  "Returns string type for a service object of type 'ResetIRExposure-response"
  "astra_camera/ResetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetIRExposure-response>)))
  "Returns md5sum for a message object of type '<ResetIRExposure-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetIRExposure-response)))
  "Returns md5sum for a message object of type 'ResetIRExposure-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetIRExposure-response>)))
  "Returns full string definition for message of type '<ResetIRExposure-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetIRExposure-response)))
  "Returns full string definition for message of type 'ResetIRExposure-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetIRExposure-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetIRExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetIRExposure-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetIRExposure)))
  'ResetIRExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetIRExposure)))
  'ResetIRExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRExposure)))
  "Returns string type for a service object of type '<ResetIRExposure>"
  "astra_camera/ResetIRExposure")