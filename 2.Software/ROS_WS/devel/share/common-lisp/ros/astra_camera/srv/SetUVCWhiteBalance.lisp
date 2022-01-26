; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetUVCWhiteBalance-request.msg.html

(cl:defclass <SetUVCWhiteBalance-request> (roslisp-msg-protocol:ros-message)
  ((white_balance
    :reader white_balance
    :initarg :white_balance
    :type cl:integer
    :initform 0))
)

(cl:defclass SetUVCWhiteBalance-request (<SetUVCWhiteBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCWhiteBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCWhiteBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCWhiteBalance-request> is deprecated: use astra_camera-srv:SetUVCWhiteBalance-request instead.")))

(cl:ensure-generic-function 'white_balance-val :lambda-list '(m))
(cl:defmethod white_balance-val ((m <SetUVCWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:white_balance-val is deprecated.  Use astra_camera-srv:white_balance instead.")
  (white_balance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCWhiteBalance-request>) ostream)
  "Serializes a message object of type '<SetUVCWhiteBalance-request>"
  (cl:let* ((signed (cl:slot-value msg 'white_balance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCWhiteBalance-request>) istream)
  "Deserializes a message object of type '<SetUVCWhiteBalance-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'white_balance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCWhiteBalance-request>)))
  "Returns string type for a service object of type '<SetUVCWhiteBalance-request>"
  "astra_camera/SetUVCWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCWhiteBalance-request)))
  "Returns string type for a service object of type 'SetUVCWhiteBalance-request"
  "astra_camera/SetUVCWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCWhiteBalance-request>)))
  "Returns md5sum for a message object of type '<SetUVCWhiteBalance-request>"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCWhiteBalance-request)))
  "Returns md5sum for a message object of type 'SetUVCWhiteBalance-request"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCWhiteBalance-request>)))
  "Returns full string definition for message of type '<SetUVCWhiteBalance-request>"
  (cl:format cl:nil "int32 white_balance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCWhiteBalance-request)))
  "Returns full string definition for message of type 'SetUVCWhiteBalance-request"
  (cl:format cl:nil "int32 white_balance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCWhiteBalance-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCWhiteBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCWhiteBalance-request
    (cl:cons ':white_balance (white_balance msg))
))
;//! \htmlinclude SetUVCWhiteBalance-response.msg.html

(cl:defclass <SetUVCWhiteBalance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetUVCWhiteBalance-response (<SetUVCWhiteBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCWhiteBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCWhiteBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCWhiteBalance-response> is deprecated: use astra_camera-srv:SetUVCWhiteBalance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCWhiteBalance-response>) ostream)
  "Serializes a message object of type '<SetUVCWhiteBalance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCWhiteBalance-response>) istream)
  "Deserializes a message object of type '<SetUVCWhiteBalance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCWhiteBalance-response>)))
  "Returns string type for a service object of type '<SetUVCWhiteBalance-response>"
  "astra_camera/SetUVCWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCWhiteBalance-response)))
  "Returns string type for a service object of type 'SetUVCWhiteBalance-response"
  "astra_camera/SetUVCWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCWhiteBalance-response>)))
  "Returns md5sum for a message object of type '<SetUVCWhiteBalance-response>"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCWhiteBalance-response)))
  "Returns md5sum for a message object of type 'SetUVCWhiteBalance-response"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCWhiteBalance-response>)))
  "Returns full string definition for message of type '<SetUVCWhiteBalance-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCWhiteBalance-response)))
  "Returns full string definition for message of type 'SetUVCWhiteBalance-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCWhiteBalance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCWhiteBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCWhiteBalance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUVCWhiteBalance)))
  'SetUVCWhiteBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUVCWhiteBalance)))
  'SetUVCWhiteBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCWhiteBalance)))
  "Returns string type for a service object of type '<SetUVCWhiteBalance>"
  "astra_camera/SetUVCWhiteBalance")