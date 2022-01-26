; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetUVCGain-request.msg.html

(cl:defclass <GetUVCGain-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUVCGain-request (<GetUVCGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCGain-request> is deprecated: use astra_camera-srv:GetUVCGain-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCGain-request>) ostream)
  "Serializes a message object of type '<GetUVCGain-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCGain-request>) istream)
  "Deserializes a message object of type '<GetUVCGain-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCGain-request>)))
  "Returns string type for a service object of type '<GetUVCGain-request>"
  "astra_camera/GetUVCGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCGain-request)))
  "Returns string type for a service object of type 'GetUVCGain-request"
  "astra_camera/GetUVCGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCGain-request>)))
  "Returns md5sum for a message object of type '<GetUVCGain-request>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCGain-request)))
  "Returns md5sum for a message object of type 'GetUVCGain-request"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCGain-request>)))
  "Returns full string definition for message of type '<GetUVCGain-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCGain-request)))
  "Returns full string definition for message of type 'GetUVCGain-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCGain-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCGain-request
))
;//! \htmlinclude GetUVCGain-response.msg.html

(cl:defclass <GetUVCGain-response> (roslisp-msg-protocol:ros-message)
  ((gain
    :reader gain
    :initarg :gain
    :type cl:integer
    :initform 0))
)

(cl:defclass GetUVCGain-response (<GetUVCGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCGain-response> is deprecated: use astra_camera-srv:GetUVCGain-response instead.")))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <GetUVCGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:gain-val is deprecated.  Use astra_camera-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCGain-response>) ostream)
  "Serializes a message object of type '<GetUVCGain-response>"
  (cl:let* ((signed (cl:slot-value msg 'gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCGain-response>) istream)
  "Deserializes a message object of type '<GetUVCGain-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCGain-response>)))
  "Returns string type for a service object of type '<GetUVCGain-response>"
  "astra_camera/GetUVCGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCGain-response)))
  "Returns string type for a service object of type 'GetUVCGain-response"
  "astra_camera/GetUVCGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCGain-response>)))
  "Returns md5sum for a message object of type '<GetUVCGain-response>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCGain-response)))
  "Returns md5sum for a message object of type 'GetUVCGain-response"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCGain-response>)))
  "Returns full string definition for message of type '<GetUVCGain-response>"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCGain-response)))
  "Returns full string definition for message of type 'GetUVCGain-response"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCGain-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCGain-response
    (cl:cons ':gain (gain msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUVCGain)))
  'GetUVCGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUVCGain)))
  'GetUVCGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCGain)))
  "Returns string type for a service object of type '<GetUVCGain>"
  "astra_camera/GetUVCGain")