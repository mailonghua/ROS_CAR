; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude SetKeyword-request.msg.html

(cl:defclass <SetKeyword-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (keyword
    :reader keyword
    :initarg :keyword
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetKeyword-request (<SetKeyword-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKeyword-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKeyword-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SetKeyword-request> is deprecated: use world_canvas_msgs-srv:SetKeyword-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetKeyword-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:id-val is deprecated.  Use world_canvas_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'keyword-val :lambda-list '(m))
(cl:defmethod keyword-val ((m <SetKeyword-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:keyword-val is deprecated.  Use world_canvas_msgs-srv:keyword instead.")
  (keyword m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SetKeyword-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetKeyword-request>)))
    "Constants for message type '<SetKeyword-request>"
  '((:ADD . 1)
    (:DEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetKeyword-request)))
    "Constants for message type 'SetKeyword-request"
  '((:ADD . 1)
    (:DEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKeyword-request>) ostream)
  "Serializes a message object of type '<SetKeyword-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'keyword))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'keyword))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKeyword-request>) istream)
  "Deserializes a message object of type '<SetKeyword-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'keyword) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'keyword) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKeyword-request>)))
  "Returns string type for a service object of type '<SetKeyword-request>"
  "world_canvas_msgs/SetKeywordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKeyword-request)))
  "Returns string type for a service object of type 'SetKeyword-request"
  "world_canvas_msgs/SetKeywordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKeyword-request>)))
  "Returns md5sum for a message object of type '<SetKeyword-request>"
  "65f5117750acdab10204175816f3c48a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKeyword-request)))
  "Returns md5sum for a message object of type 'SetKeyword-request"
  "65f5117750acdab10204175816f3c48a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKeyword-request>)))
  "Returns full string definition for message of type '<SetKeyword-request>"
  (cl:format cl:nil "# Add/remove a specific keyword to the specified annotation~%uint8 ADD = 1~%uint8 DEL = 2~%~%uuid_msgs/UniqueID id~%string keyword~%uint8 action~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKeyword-request)))
  "Returns full string definition for message of type 'SetKeyword-request"
  (cl:format cl:nil "# Add/remove a specific keyword to the specified annotation~%uint8 ADD = 1~%uint8 DEL = 2~%~%uuid_msgs/UniqueID id~%string keyword~%uint8 action~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKeyword-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'keyword))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKeyword-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKeyword-request
    (cl:cons ':id (id msg))
    (cl:cons ':keyword (keyword msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude SetKeyword-response.msg.html

(cl:defclass <SetKeyword-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetKeyword-response (<SetKeyword-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKeyword-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKeyword-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SetKeyword-response> is deprecated: use world_canvas_msgs-srv:SetKeyword-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetKeyword-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetKeyword-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKeyword-response>) ostream)
  "Serializes a message object of type '<SetKeyword-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKeyword-response>) istream)
  "Deserializes a message object of type '<SetKeyword-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKeyword-response>)))
  "Returns string type for a service object of type '<SetKeyword-response>"
  "world_canvas_msgs/SetKeywordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKeyword-response)))
  "Returns string type for a service object of type 'SetKeyword-response"
  "world_canvas_msgs/SetKeywordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKeyword-response>)))
  "Returns md5sum for a message object of type '<SetKeyword-response>"
  "65f5117750acdab10204175816f3c48a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKeyword-response)))
  "Returns md5sum for a message object of type 'SetKeyword-response"
  "65f5117750acdab10204175816f3c48a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKeyword-response>)))
  "Returns full string definition for message of type '<SetKeyword-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKeyword-response)))
  "Returns full string definition for message of type 'SetKeyword-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKeyword-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKeyword-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKeyword-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetKeyword)))
  'SetKeyword-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetKeyword)))
  'SetKeyword-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKeyword)))
  "Returns string type for a service object of type '<SetKeyword>"
  "world_canvas_msgs/SetKeyword")