; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetIRGain-request.msg.html

(cl:defclass <GetIRGain-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetIRGain-request (<GetIRGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIRGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIRGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetIRGain-request> is deprecated: use astra_camera-srv:GetIRGain-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIRGain-request>) ostream)
  "Serializes a message object of type '<GetIRGain-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIRGain-request>) istream)
  "Deserializes a message object of type '<GetIRGain-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIRGain-request>)))
  "Returns string type for a service object of type '<GetIRGain-request>"
  "astra_camera/GetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRGain-request)))
  "Returns string type for a service object of type 'GetIRGain-request"
  "astra_camera/GetIRGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIRGain-request>)))
  "Returns md5sum for a message object of type '<GetIRGain-request>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIRGain-request)))
  "Returns md5sum for a message object of type 'GetIRGain-request"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIRGain-request>)))
  "Returns full string definition for message of type '<GetIRGain-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIRGain-request)))
  "Returns full string definition for message of type 'GetIRGain-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIRGain-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIRGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIRGain-request
))
;//! \htmlinclude GetIRGain-response.msg.html

(cl:defclass <GetIRGain-response> (roslisp-msg-protocol:ros-message)
  ((gain
    :reader gain
    :initarg :gain
    :type cl:integer
    :initform 0))
)

(cl:defclass GetIRGain-response (<GetIRGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIRGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIRGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetIRGain-response> is deprecated: use astra_camera-srv:GetIRGain-response instead.")))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <GetIRGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:gain-val is deprecated.  Use astra_camera-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIRGain-response>) ostream)
  "Serializes a message object of type '<GetIRGain-response>"
  (cl:let* ((signed (cl:slot-value msg 'gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIRGain-response>) istream)
  "Deserializes a message object of type '<GetIRGain-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIRGain-response>)))
  "Returns string type for a service object of type '<GetIRGain-response>"
  "astra_camera/GetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRGain-response)))
  "Returns string type for a service object of type 'GetIRGain-response"
  "astra_camera/GetIRGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIRGain-response>)))
  "Returns md5sum for a message object of type '<GetIRGain-response>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIRGain-response)))
  "Returns md5sum for a message object of type 'GetIRGain-response"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIRGain-response>)))
  "Returns full string definition for message of type '<GetIRGain-response>"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIRGain-response)))
  "Returns full string definition for message of type 'GetIRGain-response"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIRGain-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIRGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIRGain-response
    (cl:cons ':gain (gain msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIRGain)))
  'GetIRGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIRGain)))
  'GetIRGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRGain)))
  "Returns string type for a service object of type '<GetIRGain>"
  "astra_camera/GetIRGain")