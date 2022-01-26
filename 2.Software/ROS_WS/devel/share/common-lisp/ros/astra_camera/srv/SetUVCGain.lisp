; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetUVCGain-request.msg.html

(cl:defclass <SetUVCGain-request> (roslisp-msg-protocol:ros-message)
  ((gain
    :reader gain
    :initarg :gain
    :type cl:integer
    :initform 0))
)

(cl:defclass SetUVCGain-request (<SetUVCGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCGain-request> is deprecated: use astra_camera-srv:SetUVCGain-request instead.")))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <SetUVCGain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:gain-val is deprecated.  Use astra_camera-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCGain-request>) ostream)
  "Serializes a message object of type '<SetUVCGain-request>"
  (cl:let* ((signed (cl:slot-value msg 'gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCGain-request>) istream)
  "Deserializes a message object of type '<SetUVCGain-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCGain-request>)))
  "Returns string type for a service object of type '<SetUVCGain-request>"
  "astra_camera/SetUVCGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCGain-request)))
  "Returns string type for a service object of type 'SetUVCGain-request"
  "astra_camera/SetUVCGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCGain-request>)))
  "Returns md5sum for a message object of type '<SetUVCGain-request>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCGain-request)))
  "Returns md5sum for a message object of type 'SetUVCGain-request"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCGain-request>)))
  "Returns full string definition for message of type '<SetUVCGain-request>"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCGain-request)))
  "Returns full string definition for message of type 'SetUVCGain-request"
  (cl:format cl:nil "int32 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCGain-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCGain-request
    (cl:cons ':gain (gain msg))
))
;//! \htmlinclude SetUVCGain-response.msg.html

(cl:defclass <SetUVCGain-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetUVCGain-response (<SetUVCGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCGain-response> is deprecated: use astra_camera-srv:SetUVCGain-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCGain-response>) ostream)
  "Serializes a message object of type '<SetUVCGain-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCGain-response>) istream)
  "Deserializes a message object of type '<SetUVCGain-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCGain-response>)))
  "Returns string type for a service object of type '<SetUVCGain-response>"
  "astra_camera/SetUVCGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCGain-response)))
  "Returns string type for a service object of type 'SetUVCGain-response"
  "astra_camera/SetUVCGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCGain-response>)))
  "Returns md5sum for a message object of type '<SetUVCGain-response>"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCGain-response)))
  "Returns md5sum for a message object of type 'SetUVCGain-response"
  "164d2201bda8580473ff7023ba27f703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCGain-response>)))
  "Returns full string definition for message of type '<SetUVCGain-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCGain-response)))
  "Returns full string definition for message of type 'SetUVCGain-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCGain-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCGain-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUVCGain)))
  'SetUVCGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUVCGain)))
  'SetUVCGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCGain)))
  "Returns string type for a service object of type '<SetUVCGain>"
  "astra_camera/SetUVCGain")