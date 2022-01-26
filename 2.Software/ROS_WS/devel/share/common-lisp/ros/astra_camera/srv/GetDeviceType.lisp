; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetDeviceType-request.msg.html

(cl:defclass <GetDeviceType-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceType-request (<GetDeviceType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetDeviceType-request> is deprecated: use astra_camera-srv:GetDeviceType-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceType-request>) ostream)
  "Serializes a message object of type '<GetDeviceType-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceType-request>) istream)
  "Deserializes a message object of type '<GetDeviceType-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceType-request>)))
  "Returns string type for a service object of type '<GetDeviceType-request>"
  "astra_camera/GetDeviceTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceType-request)))
  "Returns string type for a service object of type 'GetDeviceType-request"
  "astra_camera/GetDeviceTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceType-request>)))
  "Returns md5sum for a message object of type '<GetDeviceType-request>"
  "4c8e9dd50b39344412b92ce9e1e9615c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceType-request)))
  "Returns md5sum for a message object of type 'GetDeviceType-request"
  "4c8e9dd50b39344412b92ce9e1e9615c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceType-request>)))
  "Returns full string definition for message of type '<GetDeviceType-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceType-request)))
  "Returns full string definition for message of type 'GetDeviceType-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceType-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceType-request
))
;//! \htmlinclude GetDeviceType-response.msg.html

(cl:defclass <GetDeviceType-response> (roslisp-msg-protocol:ros-message)
  ((device_type
    :reader device_type
    :initarg :device_type
    :type cl:string
    :initform ""))
)

(cl:defclass GetDeviceType-response (<GetDeviceType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetDeviceType-response> is deprecated: use astra_camera-srv:GetDeviceType-response instead.")))

(cl:ensure-generic-function 'device_type-val :lambda-list '(m))
(cl:defmethod device_type-val ((m <GetDeviceType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:device_type-val is deprecated.  Use astra_camera-srv:device_type instead.")
  (device_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceType-response>) ostream)
  "Serializes a message object of type '<GetDeviceType-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceType-response>) istream)
  "Deserializes a message object of type '<GetDeviceType-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceType-response>)))
  "Returns string type for a service object of type '<GetDeviceType-response>"
  "astra_camera/GetDeviceTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceType-response)))
  "Returns string type for a service object of type 'GetDeviceType-response"
  "astra_camera/GetDeviceTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceType-response>)))
  "Returns md5sum for a message object of type '<GetDeviceType-response>"
  "4c8e9dd50b39344412b92ce9e1e9615c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceType-response)))
  "Returns md5sum for a message object of type 'GetDeviceType-response"
  "4c8e9dd50b39344412b92ce9e1e9615c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceType-response>)))
  "Returns full string definition for message of type '<GetDeviceType-response>"
  (cl:format cl:nil "string device_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceType-response)))
  "Returns full string definition for message of type 'GetDeviceType-response"
  (cl:format cl:nil "string device_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceType-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'device_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceType-response
    (cl:cons ':device_type (device_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceType)))
  'GetDeviceType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceType)))
  'GetDeviceType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceType)))
  "Returns string type for a service object of type '<GetDeviceType>"
  "astra_camera/GetDeviceType")