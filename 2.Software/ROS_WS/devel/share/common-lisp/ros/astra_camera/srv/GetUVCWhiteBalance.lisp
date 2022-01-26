; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetUVCWhiteBalance-request.msg.html

(cl:defclass <GetUVCWhiteBalance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUVCWhiteBalance-request (<GetUVCWhiteBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCWhiteBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCWhiteBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCWhiteBalance-request> is deprecated: use astra_camera-srv:GetUVCWhiteBalance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCWhiteBalance-request>) ostream)
  "Serializes a message object of type '<GetUVCWhiteBalance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCWhiteBalance-request>) istream)
  "Deserializes a message object of type '<GetUVCWhiteBalance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCWhiteBalance-request>)))
  "Returns string type for a service object of type '<GetUVCWhiteBalance-request>"
  "astra_camera/GetUVCWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCWhiteBalance-request)))
  "Returns string type for a service object of type 'GetUVCWhiteBalance-request"
  "astra_camera/GetUVCWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCWhiteBalance-request>)))
  "Returns md5sum for a message object of type '<GetUVCWhiteBalance-request>"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCWhiteBalance-request)))
  "Returns md5sum for a message object of type 'GetUVCWhiteBalance-request"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCWhiteBalance-request>)))
  "Returns full string definition for message of type '<GetUVCWhiteBalance-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCWhiteBalance-request)))
  "Returns full string definition for message of type 'GetUVCWhiteBalance-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCWhiteBalance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCWhiteBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCWhiteBalance-request
))
;//! \htmlinclude GetUVCWhiteBalance-response.msg.html

(cl:defclass <GetUVCWhiteBalance-response> (roslisp-msg-protocol:ros-message)
  ((white_balance
    :reader white_balance
    :initarg :white_balance
    :type cl:integer
    :initform 0))
)

(cl:defclass GetUVCWhiteBalance-response (<GetUVCWhiteBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCWhiteBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCWhiteBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCWhiteBalance-response> is deprecated: use astra_camera-srv:GetUVCWhiteBalance-response instead.")))

(cl:ensure-generic-function 'white_balance-val :lambda-list '(m))
(cl:defmethod white_balance-val ((m <GetUVCWhiteBalance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:white_balance-val is deprecated.  Use astra_camera-srv:white_balance instead.")
  (white_balance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCWhiteBalance-response>) ostream)
  "Serializes a message object of type '<GetUVCWhiteBalance-response>"
  (cl:let* ((signed (cl:slot-value msg 'white_balance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCWhiteBalance-response>) istream)
  "Deserializes a message object of type '<GetUVCWhiteBalance-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'white_balance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCWhiteBalance-response>)))
  "Returns string type for a service object of type '<GetUVCWhiteBalance-response>"
  "astra_camera/GetUVCWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCWhiteBalance-response)))
  "Returns string type for a service object of type 'GetUVCWhiteBalance-response"
  "astra_camera/GetUVCWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCWhiteBalance-response>)))
  "Returns md5sum for a message object of type '<GetUVCWhiteBalance-response>"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCWhiteBalance-response)))
  "Returns md5sum for a message object of type 'GetUVCWhiteBalance-response"
  "fc2837b62008590625057801873acc63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCWhiteBalance-response>)))
  "Returns full string definition for message of type '<GetUVCWhiteBalance-response>"
  (cl:format cl:nil "int32 white_balance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCWhiteBalance-response)))
  "Returns full string definition for message of type 'GetUVCWhiteBalance-response"
  (cl:format cl:nil "int32 white_balance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCWhiteBalance-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCWhiteBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCWhiteBalance-response
    (cl:cons ':white_balance (white_balance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUVCWhiteBalance)))
  'GetUVCWhiteBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUVCWhiteBalance)))
  'GetUVCWhiteBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCWhiteBalance)))
  "Returns string type for a service object of type '<GetUVCWhiteBalance>"
  "astra_camera/GetUVCWhiteBalance")