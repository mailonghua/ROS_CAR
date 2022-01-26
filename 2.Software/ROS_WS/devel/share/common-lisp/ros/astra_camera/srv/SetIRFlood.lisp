; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetIRFlood-request.msg.html

(cl:defclass <SetIRFlood-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIRFlood-request (<SetIRFlood-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRFlood-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRFlood-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRFlood-request> is deprecated: use astra_camera-srv:SetIRFlood-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetIRFlood-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRFlood-request>) ostream)
  "Serializes a message object of type '<SetIRFlood-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRFlood-request>) istream)
  "Deserializes a message object of type '<SetIRFlood-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRFlood-request>)))
  "Returns string type for a service object of type '<SetIRFlood-request>"
  "astra_camera/SetIRFloodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRFlood-request)))
  "Returns string type for a service object of type 'SetIRFlood-request"
  "astra_camera/SetIRFloodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRFlood-request>)))
  "Returns md5sum for a message object of type '<SetIRFlood-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRFlood-request)))
  "Returns md5sum for a message object of type 'SetIRFlood-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRFlood-request>)))
  "Returns full string definition for message of type '<SetIRFlood-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRFlood-request)))
  "Returns full string definition for message of type 'SetIRFlood-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRFlood-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRFlood-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRFlood-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetIRFlood-response.msg.html

(cl:defclass <SetIRFlood-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetIRFlood-response (<SetIRFlood-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRFlood-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRFlood-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRFlood-response> is deprecated: use astra_camera-srv:SetIRFlood-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRFlood-response>) ostream)
  "Serializes a message object of type '<SetIRFlood-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRFlood-response>) istream)
  "Deserializes a message object of type '<SetIRFlood-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRFlood-response>)))
  "Returns string type for a service object of type '<SetIRFlood-response>"
  "astra_camera/SetIRFloodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRFlood-response)))
  "Returns string type for a service object of type 'SetIRFlood-response"
  "astra_camera/SetIRFloodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRFlood-response>)))
  "Returns md5sum for a message object of type '<SetIRFlood-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRFlood-response)))
  "Returns md5sum for a message object of type 'SetIRFlood-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRFlood-response>)))
  "Returns full string definition for message of type '<SetIRFlood-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRFlood-response)))
  "Returns full string definition for message of type 'SetIRFlood-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRFlood-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRFlood-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRFlood-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIRFlood)))
  'SetIRFlood-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIRFlood)))
  'SetIRFlood-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRFlood)))
  "Returns string type for a service object of type '<SetIRFlood>"
  "astra_camera/SetIRFlood")