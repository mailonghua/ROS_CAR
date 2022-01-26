; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SwitchIRCamera-request.msg.html

(cl:defclass <SwitchIRCamera-request> (roslisp-msg-protocol:ros-message)
  ((camera
    :reader camera
    :initarg :camera
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchIRCamera-request (<SwitchIRCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchIRCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchIRCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SwitchIRCamera-request> is deprecated: use astra_camera-srv:SwitchIRCamera-request instead.")))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <SwitchIRCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:camera-val is deprecated.  Use astra_camera-srv:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchIRCamera-request>) ostream)
  "Serializes a message object of type '<SwitchIRCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchIRCamera-request>) istream)
  "Deserializes a message object of type '<SwitchIRCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchIRCamera-request>)))
  "Returns string type for a service object of type '<SwitchIRCamera-request>"
  "astra_camera/SwitchIRCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchIRCamera-request)))
  "Returns string type for a service object of type 'SwitchIRCamera-request"
  "astra_camera/SwitchIRCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchIRCamera-request>)))
  "Returns md5sum for a message object of type '<SwitchIRCamera-request>"
  "8162e9a89f39d80b11a715b34e890034")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchIRCamera-request)))
  "Returns md5sum for a message object of type 'SwitchIRCamera-request"
  "8162e9a89f39d80b11a715b34e890034")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchIRCamera-request>)))
  "Returns full string definition for message of type '<SwitchIRCamera-request>"
  (cl:format cl:nil "string camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchIRCamera-request)))
  "Returns full string definition for message of type 'SwitchIRCamera-request"
  (cl:format cl:nil "string camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchIRCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchIRCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchIRCamera-request
    (cl:cons ':camera (camera msg))
))
;//! \htmlinclude SwitchIRCamera-response.msg.html

(cl:defclass <SwitchIRCamera-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SwitchIRCamera-response (<SwitchIRCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchIRCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchIRCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SwitchIRCamera-response> is deprecated: use astra_camera-srv:SwitchIRCamera-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchIRCamera-response>) ostream)
  "Serializes a message object of type '<SwitchIRCamera-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchIRCamera-response>) istream)
  "Deserializes a message object of type '<SwitchIRCamera-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchIRCamera-response>)))
  "Returns string type for a service object of type '<SwitchIRCamera-response>"
  "astra_camera/SwitchIRCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchIRCamera-response)))
  "Returns string type for a service object of type 'SwitchIRCamera-response"
  "astra_camera/SwitchIRCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchIRCamera-response>)))
  "Returns md5sum for a message object of type '<SwitchIRCamera-response>"
  "8162e9a89f39d80b11a715b34e890034")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchIRCamera-response)))
  "Returns md5sum for a message object of type 'SwitchIRCamera-response"
  "8162e9a89f39d80b11a715b34e890034")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchIRCamera-response>)))
  "Returns full string definition for message of type '<SwitchIRCamera-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchIRCamera-response)))
  "Returns full string definition for message of type 'SwitchIRCamera-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchIRCamera-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchIRCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchIRCamera-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchIRCamera)))
  'SwitchIRCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchIRCamera)))
  'SwitchIRCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchIRCamera)))
  "Returns string type for a service object of type '<SwitchIRCamera>"
  "astra_camera/SwitchIRCamera")