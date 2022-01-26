; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude YAMLImport-request.msg.html

(cl:defclass <YAMLImport-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass YAMLImport-request (<YAMLImport-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YAMLImport-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YAMLImport-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<YAMLImport-request> is deprecated: use world_canvas_msgs-srv:YAMLImport-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <YAMLImport-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:filename-val is deprecated.  Use world_canvas_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YAMLImport-request>) ostream)
  "Serializes a message object of type '<YAMLImport-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YAMLImport-request>) istream)
  "Deserializes a message object of type '<YAMLImport-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YAMLImport-request>)))
  "Returns string type for a service object of type '<YAMLImport-request>"
  "world_canvas_msgs/YAMLImportRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLImport-request)))
  "Returns string type for a service object of type 'YAMLImport-request"
  "world_canvas_msgs/YAMLImportRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YAMLImport-request>)))
  "Returns md5sum for a message object of type '<YAMLImport-request>"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YAMLImport-request)))
  "Returns md5sum for a message object of type 'YAMLImport-request"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YAMLImport-request>)))
  "Returns full string definition for message of type '<YAMLImport-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YAMLImport-request)))
  "Returns full string definition for message of type 'YAMLImport-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YAMLImport-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YAMLImport-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YAMLImport-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude YAMLImport-response.msg.html

(cl:defclass <YAMLImport-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass YAMLImport-response (<YAMLImport-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YAMLImport-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YAMLImport-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<YAMLImport-response> is deprecated: use world_canvas_msgs-srv:YAMLImport-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <YAMLImport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <YAMLImport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YAMLImport-response>) ostream)
  "Serializes a message object of type '<YAMLImport-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YAMLImport-response>) istream)
  "Deserializes a message object of type '<YAMLImport-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YAMLImport-response>)))
  "Returns string type for a service object of type '<YAMLImport-response>"
  "world_canvas_msgs/YAMLImportResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLImport-response)))
  "Returns string type for a service object of type 'YAMLImport-response"
  "world_canvas_msgs/YAMLImportResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YAMLImport-response>)))
  "Returns md5sum for a message object of type '<YAMLImport-response>"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YAMLImport-response)))
  "Returns md5sum for a message object of type 'YAMLImport-response"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YAMLImport-response>)))
  "Returns full string definition for message of type '<YAMLImport-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YAMLImport-response)))
  "Returns full string definition for message of type 'YAMLImport-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YAMLImport-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YAMLImport-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YAMLImport-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YAMLImport)))
  'YAMLImport-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YAMLImport)))
  'YAMLImport-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLImport)))
  "Returns string type for a service object of type '<YAMLImport>"
  "world_canvas_msgs/YAMLImport")