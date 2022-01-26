; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetSerial-request.msg.html

(cl:defclass <GetSerial-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSerial-request (<GetSerial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSerial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSerial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetSerial-request> is deprecated: use astra_camera-srv:GetSerial-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSerial-request>) ostream)
  "Serializes a message object of type '<GetSerial-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSerial-request>) istream)
  "Deserializes a message object of type '<GetSerial-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSerial-request>)))
  "Returns string type for a service object of type '<GetSerial-request>"
  "astra_camera/GetSerialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial-request)))
  "Returns string type for a service object of type 'GetSerial-request"
  "astra_camera/GetSerialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSerial-request>)))
  "Returns md5sum for a message object of type '<GetSerial-request>"
  "fca40cf463282a80db4e2037c8a61741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSerial-request)))
  "Returns md5sum for a message object of type 'GetSerial-request"
  "fca40cf463282a80db4e2037c8a61741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSerial-request>)))
  "Returns full string definition for message of type '<GetSerial-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSerial-request)))
  "Returns full string definition for message of type 'GetSerial-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSerial-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSerial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSerial-request
))
;//! \htmlinclude GetSerial-response.msg.html

(cl:defclass <GetSerial-response> (roslisp-msg-protocol:ros-message)
  ((serial
    :reader serial
    :initarg :serial
    :type cl:string
    :initform ""))
)

(cl:defclass GetSerial-response (<GetSerial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSerial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSerial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetSerial-response> is deprecated: use astra_camera-srv:GetSerial-response instead.")))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <GetSerial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:serial-val is deprecated.  Use astra_camera-srv:serial instead.")
  (serial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSerial-response>) ostream)
  "Serializes a message object of type '<GetSerial-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSerial-response>) istream)
  "Deserializes a message object of type '<GetSerial-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSerial-response>)))
  "Returns string type for a service object of type '<GetSerial-response>"
  "astra_camera/GetSerialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial-response)))
  "Returns string type for a service object of type 'GetSerial-response"
  "astra_camera/GetSerialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSerial-response>)))
  "Returns md5sum for a message object of type '<GetSerial-response>"
  "fca40cf463282a80db4e2037c8a61741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSerial-response)))
  "Returns md5sum for a message object of type 'GetSerial-response"
  "fca40cf463282a80db4e2037c8a61741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSerial-response>)))
  "Returns full string definition for message of type '<GetSerial-response>"
  (cl:format cl:nil "string serial~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSerial-response)))
  "Returns full string definition for message of type 'GetSerial-response"
  (cl:format cl:nil "string serial~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSerial-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serial))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSerial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSerial-response
    (cl:cons ':serial (serial msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSerial)))
  'GetSerial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSerial)))
  'GetSerial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial)))
  "Returns string type for a service object of type '<GetSerial>"
  "astra_camera/GetSerial")