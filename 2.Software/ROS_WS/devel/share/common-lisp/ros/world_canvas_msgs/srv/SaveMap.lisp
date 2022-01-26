; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude SaveMap-request.msg.html

(cl:defclass <SaveMap-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform ""))
)

(cl:defclass SaveMap-request (<SaveMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SaveMap-request> is deprecated: use world_canvas_msgs-srv:SaveMap-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <SaveMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:map_name-val is deprecated.  Use world_canvas_msgs-srv:map_name instead.")
  (map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMap-request>) ostream)
  "Serializes a message object of type '<SaveMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMap-request>) istream)
  "Deserializes a message object of type '<SaveMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMap-request>)))
  "Returns string type for a service object of type '<SaveMap-request>"
  "world_canvas_msgs/SaveMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap-request)))
  "Returns string type for a service object of type 'SaveMap-request"
  "world_canvas_msgs/SaveMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMap-request>)))
  "Returns md5sum for a message object of type '<SaveMap-request>"
  "25e928a2d4ff388c294895b7af935978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMap-request)))
  "Returns md5sum for a message object of type 'SaveMap-request"
  "25e928a2d4ff388c294895b7af935978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMap-request>)))
  "Returns full string definition for message of type '<SaveMap-request>"
  (cl:format cl:nil "# Service used to name the most recent saved map.~%~%string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMap-request)))
  "Returns full string definition for message of type 'SaveMap-request"
  (cl:format cl:nil "# Service used to name the most recent saved map.~%~%string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMap-request
    (cl:cons ':map_name (map_name msg))
))
;//! \htmlinclude SaveMap-response.msg.html

(cl:defclass <SaveMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveMap-response (<SaveMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SaveMap-response> is deprecated: use world_canvas_msgs-srv:SaveMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMap-response>) ostream)
  "Serializes a message object of type '<SaveMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMap-response>) istream)
  "Deserializes a message object of type '<SaveMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMap-response>)))
  "Returns string type for a service object of type '<SaveMap-response>"
  "world_canvas_msgs/SaveMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap-response)))
  "Returns string type for a service object of type 'SaveMap-response"
  "world_canvas_msgs/SaveMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMap-response>)))
  "Returns md5sum for a message object of type '<SaveMap-response>"
  "25e928a2d4ff388c294895b7af935978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMap-response)))
  "Returns md5sum for a message object of type 'SaveMap-response"
  "25e928a2d4ff388c294895b7af935978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMap-response>)))
  "Returns full string definition for message of type '<SaveMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMap-response)))
  "Returns full string definition for message of type 'SaveMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveMap)))
  'SaveMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveMap)))
  'SaveMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap)))
  "Returns string type for a service object of type '<SaveMap>"
  "world_canvas_msgs/SaveMap")