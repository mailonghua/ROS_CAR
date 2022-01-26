; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetLDP-request.msg.html

(cl:defclass <SetLDP-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLDP-request (<SetLDP-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLDP-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLDP-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetLDP-request> is deprecated: use astra_camera-srv:SetLDP-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetLDP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLDP-request>) ostream)
  "Serializes a message object of type '<SetLDP-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLDP-request>) istream)
  "Deserializes a message object of type '<SetLDP-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLDP-request>)))
  "Returns string type for a service object of type '<SetLDP-request>"
  "astra_camera/SetLDPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLDP-request)))
  "Returns string type for a service object of type 'SetLDP-request"
  "astra_camera/SetLDPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLDP-request>)))
  "Returns md5sum for a message object of type '<SetLDP-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLDP-request)))
  "Returns md5sum for a message object of type 'SetLDP-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLDP-request>)))
  "Returns full string definition for message of type '<SetLDP-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLDP-request)))
  "Returns full string definition for message of type 'SetLDP-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLDP-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLDP-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLDP-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetLDP-response.msg.html

(cl:defclass <SetLDP-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLDP-response (<SetLDP-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLDP-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLDP-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetLDP-response> is deprecated: use astra_camera-srv:SetLDP-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLDP-response>) ostream)
  "Serializes a message object of type '<SetLDP-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLDP-response>) istream)
  "Deserializes a message object of type '<SetLDP-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLDP-response>)))
  "Returns string type for a service object of type '<SetLDP-response>"
  "astra_camera/SetLDPResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLDP-response)))
  "Returns string type for a service object of type 'SetLDP-response"
  "astra_camera/SetLDPResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLDP-response>)))
  "Returns md5sum for a message object of type '<SetLDP-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLDP-response)))
  "Returns md5sum for a message object of type 'SetLDP-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLDP-response>)))
  "Returns full string definition for message of type '<SetLDP-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLDP-response)))
  "Returns full string definition for message of type 'SetLDP-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLDP-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLDP-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLDP-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLDP)))
  'SetLDP-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLDP)))
  'SetLDP-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLDP)))
  "Returns string type for a service object of type '<SetLDP>"
  "astra_camera/SetLDP")