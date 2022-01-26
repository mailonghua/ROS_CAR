; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetLaser-request.msg.html

(cl:defclass <SetLaser-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLaser-request (<SetLaser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLaser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLaser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetLaser-request> is deprecated: use astra_camera-srv:SetLaser-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLaser-request>) ostream)
  "Serializes a message object of type '<SetLaser-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLaser-request>) istream)
  "Deserializes a message object of type '<SetLaser-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLaser-request>)))
  "Returns string type for a service object of type '<SetLaser-request>"
  "astra_camera/SetLaserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaser-request)))
  "Returns string type for a service object of type 'SetLaser-request"
  "astra_camera/SetLaserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLaser-request>)))
  "Returns md5sum for a message object of type '<SetLaser-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLaser-request)))
  "Returns md5sum for a message object of type 'SetLaser-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLaser-request>)))
  "Returns full string definition for message of type '<SetLaser-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLaser-request)))
  "Returns full string definition for message of type 'SetLaser-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLaser-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLaser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLaser-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetLaser-response.msg.html

(cl:defclass <SetLaser-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLaser-response (<SetLaser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLaser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLaser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetLaser-response> is deprecated: use astra_camera-srv:SetLaser-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLaser-response>) ostream)
  "Serializes a message object of type '<SetLaser-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLaser-response>) istream)
  "Deserializes a message object of type '<SetLaser-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLaser-response>)))
  "Returns string type for a service object of type '<SetLaser-response>"
  "astra_camera/SetLaserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaser-response)))
  "Returns string type for a service object of type 'SetLaser-response"
  "astra_camera/SetLaserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLaser-response>)))
  "Returns md5sum for a message object of type '<SetLaser-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLaser-response)))
  "Returns md5sum for a message object of type 'SetLaser-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLaser-response>)))
  "Returns full string definition for message of type '<SetLaser-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLaser-response)))
  "Returns full string definition for message of type 'SetLaser-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLaser-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLaser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLaser-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLaser)))
  'SetLaser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLaser)))
  'SetLaser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaser)))
  "Returns string type for a service object of type '<SetLaser>"
  "astra_camera/SetLaser")