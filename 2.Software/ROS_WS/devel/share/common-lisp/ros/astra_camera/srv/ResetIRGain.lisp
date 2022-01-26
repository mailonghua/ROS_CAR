; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude ResetIRGain-request.msg.html

(cl:defclass <ResetIRGain-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetIRGain-request (<ResetIRGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetIRGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetIRGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<ResetIRGain-request> is deprecated: use astra_camera-srv:ResetIRGain-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetIRGain-request>) ostream)
  "Serializes a message object of type '<ResetIRGain-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetIRGain-request>) istream)
  "Deserializes a message object of type '<ResetIRGain-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetIRGain-request>)))
  "Returns string type for a service object of type '<ResetIRGain-request>"
  "astra_camera/ResetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRGain-request)))
  "Returns string type for a service object of type 'ResetIRGain-request"
  "astra_camera/ResetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetIRGain-request>)))
  "Returns md5sum for a message object of type '<ResetIRGain-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetIRGain-request)))
  "Returns md5sum for a message object of type 'ResetIRGain-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetIRGain-request>)))
  "Returns full string definition for message of type '<ResetIRGain-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetIRGain-request)))
  "Returns full string definition for message of type 'ResetIRGain-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetIRGain-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetIRGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetIRGain-request
))
;//! \htmlinclude ResetIRGain-response.msg.html

(cl:defclass <ResetIRGain-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetIRGain-response (<ResetIRGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetIRGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetIRGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<ResetIRGain-response> is deprecated: use astra_camera-srv:ResetIRGain-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetIRGain-response>) ostream)
  "Serializes a message object of type '<ResetIRGain-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetIRGain-response>) istream)
  "Deserializes a message object of type '<ResetIRGain-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetIRGain-response>)))
  "Returns string type for a service object of type '<ResetIRGain-response>"
  "astra_camera/ResetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRGain-response)))
  "Returns string type for a service object of type 'ResetIRGain-response"
  "astra_camera/ResetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetIRGain-response>)))
  "Returns md5sum for a message object of type '<ResetIRGain-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetIRGain-response)))
  "Returns md5sum for a message object of type 'ResetIRGain-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetIRGain-response>)))
  "Returns full string definition for message of type '<ResetIRGain-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetIRGain-response)))
  "Returns full string definition for message of type 'ResetIRGain-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetIRGain-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetIRGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetIRGain-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetIRGain)))
  'ResetIRGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetIRGain)))
  'ResetIRGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetIRGain)))
  "Returns string type for a service object of type '<ResetIRGain>"
  "astra_camera/ResetIRGain")