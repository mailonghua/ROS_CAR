; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude YAMLExport-request.msg.html

(cl:defclass <YAMLExport-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass YAMLExport-request (<YAMLExport-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YAMLExport-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YAMLExport-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<YAMLExport-request> is deprecated: use world_canvas_msgs-srv:YAMLExport-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <YAMLExport-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:filename-val is deprecated.  Use world_canvas_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YAMLExport-request>) ostream)
  "Serializes a message object of type '<YAMLExport-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YAMLExport-request>) istream)
  "Deserializes a message object of type '<YAMLExport-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YAMLExport-request>)))
  "Returns string type for a service object of type '<YAMLExport-request>"
  "world_canvas_msgs/YAMLExportRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLExport-request)))
  "Returns string type for a service object of type 'YAMLExport-request"
  "world_canvas_msgs/YAMLExportRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YAMLExport-request>)))
  "Returns md5sum for a message object of type '<YAMLExport-request>"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YAMLExport-request)))
  "Returns md5sum for a message object of type 'YAMLExport-request"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YAMLExport-request>)))
  "Returns full string definition for message of type '<YAMLExport-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YAMLExport-request)))
  "Returns full string definition for message of type 'YAMLExport-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YAMLExport-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YAMLExport-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YAMLExport-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude YAMLExport-response.msg.html

(cl:defclass <YAMLExport-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass YAMLExport-response (<YAMLExport-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YAMLExport-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YAMLExport-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<YAMLExport-response> is deprecated: use world_canvas_msgs-srv:YAMLExport-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <YAMLExport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <YAMLExport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YAMLExport-response>) ostream)
  "Serializes a message object of type '<YAMLExport-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YAMLExport-response>) istream)
  "Deserializes a message object of type '<YAMLExport-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YAMLExport-response>)))
  "Returns string type for a service object of type '<YAMLExport-response>"
  "world_canvas_msgs/YAMLExportResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLExport-response)))
  "Returns string type for a service object of type 'YAMLExport-response"
  "world_canvas_msgs/YAMLExportResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YAMLExport-response>)))
  "Returns md5sum for a message object of type '<YAMLExport-response>"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YAMLExport-response)))
  "Returns md5sum for a message object of type 'YAMLExport-response"
  "dea35f0126973fed4bc2a85823db7aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YAMLExport-response>)))
  "Returns full string definition for message of type '<YAMLExport-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YAMLExport-response)))
  "Returns full string definition for message of type 'YAMLExport-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YAMLExport-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YAMLExport-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YAMLExport-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YAMLExport)))
  'YAMLExport-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YAMLExport)))
  'YAMLExport-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YAMLExport)))
  "Returns string type for a service object of type '<YAMLExport>"
  "world_canvas_msgs/YAMLExport")