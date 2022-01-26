; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude RenameMap-request.msg.html

(cl:defclass <RenameMap-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (new_name
    :reader new_name
    :initarg :new_name
    :type cl:string
    :initform ""))
)

(cl:defclass RenameMap-request (<RenameMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<RenameMap-request> is deprecated: use world_canvas_msgs-srv:RenameMap-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:map_id-val is deprecated.  Use world_canvas_msgs-srv:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'new_name-val :lambda-list '(m))
(cl:defmethod new_name-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:new_name-val is deprecated.  Use world_canvas_msgs-srv:new_name instead.")
  (new_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-request>) ostream)
  "Serializes a message object of type '<RenameMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-request>) istream)
  "Deserializes a message object of type '<RenameMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-request>)))
  "Returns string type for a service object of type '<RenameMap-request>"
  "world_canvas_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-request)))
  "Returns string type for a service object of type 'RenameMap-request"
  "world_canvas_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-request>)))
  "Returns md5sum for a message object of type '<RenameMap-request>"
  "94f4d84fa2d3173899807933af417784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-request)))
  "Returns md5sum for a message object of type 'RenameMap-request"
  "94f4d84fa2d3173899807933af417784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-request>)))
  "Returns full string definition for message of type '<RenameMap-request>"
  (cl:format cl:nil "# Service used to rename a given map.~%~%string map_id~%string new_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-request)))
  "Returns full string definition for message of type 'RenameMap-request"
  (cl:format cl:nil "# Service used to rename a given map.~%~%string map_id~%string new_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     4 (cl:length (cl:slot-value msg 'new_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-request
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':new_name (new_name msg))
))
;//! \htmlinclude RenameMap-response.msg.html

(cl:defclass <RenameMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RenameMap-response (<RenameMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<RenameMap-response> is deprecated: use world_canvas_msgs-srv:RenameMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-response>) ostream)
  "Serializes a message object of type '<RenameMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-response>) istream)
  "Deserializes a message object of type '<RenameMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-response>)))
  "Returns string type for a service object of type '<RenameMap-response>"
  "world_canvas_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-response)))
  "Returns string type for a service object of type 'RenameMap-response"
  "world_canvas_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-response>)))
  "Returns md5sum for a message object of type '<RenameMap-response>"
  "94f4d84fa2d3173899807933af417784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-response)))
  "Returns md5sum for a message object of type 'RenameMap-response"
  "94f4d84fa2d3173899807933af417784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-response>)))
  "Returns full string definition for message of type '<RenameMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-response)))
  "Returns full string definition for message of type 'RenameMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap)))
  "Returns string type for a service object of type '<RenameMap>"
  "world_canvas_msgs/RenameMap")