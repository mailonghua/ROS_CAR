; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetIRGain-request.msg.html

(cl:defclass <SetIRGain-request> (roslisp-msg-protocol:ros-message)
  ((gain
    :reader gain
    :initarg :gain
    :type cl:integer
    :initform 0))
)

(cl:defclass SetIRGain-request (<SetIRGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRGain-request> is deprecated: use astra_camera-srv:SetIRGain-request instead.")))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <SetIRGain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:gain-val is deprecated.  Use astra_camera-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRGain-request>) ostream)
  "Serializes a message object of type '<SetIRGain-request>"
  (cl:let* ((signed (cl:slot-value msg 'gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRGain-request>) istream)
  "Deserializes a message object of type '<SetIRGain-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRGain-request>)))
  "Returns string type for a service object of type '<SetIRGain-request>"
  "astra_camera/SetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRGain-request)))
  "Returns string type for a service object of type 'SetIRGain-request"
  "astra_camera/SetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRGain-request>)))
  "Returns md5sum for a message object of type '<SetIRGain-request>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRGain-request)))
  "Returns md5sum for a message object of type 'SetIRGain-request"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRGain-request>)))
  "Returns full string definition for message of type '<SetIRGain-request>"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRGain-request)))
  "Returns full string definition for message of type 'SetIRGain-request"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRGain-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRGain-request
    (cl:cons ':gain (gain msg))
))
;//! \htmlinclude SetIRGain-response.msg.html

(cl:defclass <SetIRGain-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetIRGain-response (<SetIRGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRGain-response> is deprecated: use astra_camera-srv:SetIRGain-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRGain-response>) ostream)
  "Serializes a message object of type '<SetIRGain-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRGain-response>) istream)
  "Deserializes a message object of type '<SetIRGain-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRGain-response>)))
  "Returns string type for a service object of type '<SetIRGain-response>"
  "astra_camera/SetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRGain-response)))
  "Returns string type for a service object of type 'SetIRGain-response"
  "astra_camera/SetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRGain-response>)))
  "Returns md5sum for a message object of type '<SetIRGain-response>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRGain-response)))
  "Returns md5sum for a message object of type 'SetIRGain-response"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRGain-response>)))
  "Returns full string definition for message of type '<SetIRGain-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRGain-response)))
  "Returns full string definition for message of type 'SetIRGain-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRGain-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRGain-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIRGain)))
  'SetIRGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIRGain)))
  'SetIRGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRGain)))
  "Returns string type for a service object of type '<SetIRGain>"
  "astra_camera/SetIRGain")