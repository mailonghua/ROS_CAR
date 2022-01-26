; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude PublishMap-request.msg.html

(cl:defclass <PublishMap-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform ""))
)

(cl:defclass PublishMap-request (<PublishMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<PublishMap-request> is deprecated: use world_canvas_msgs-srv:PublishMap-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <PublishMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:map_id-val is deprecated.  Use world_canvas_msgs-srv:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishMap-request>) ostream)
  "Serializes a message object of type '<PublishMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishMap-request>) istream)
  "Deserializes a message object of type '<PublishMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishMap-request>)))
  "Returns string type for a service object of type '<PublishMap-request>"
  "world_canvas_msgs/PublishMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap-request)))
  "Returns string type for a service object of type 'PublishMap-request"
  "world_canvas_msgs/PublishMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishMap-request>)))
  "Returns md5sum for a message object of type '<PublishMap-request>"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishMap-request)))
  "Returns md5sum for a message object of type 'PublishMap-request"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishMap-request>)))
  "Returns full string definition for message of type '<PublishMap-request>"
  (cl:format cl:nil "# Service used to publish a given map from the database to the /map topic.~%~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishMap-request)))
  "Returns full string definition for message of type 'PublishMap-request"
  (cl:format cl:nil "# Service used to publish a given map from the database to the /map topic.~%~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishMap-request
    (cl:cons ':map_id (map_id msg))
))
;//! \htmlinclude PublishMap-response.msg.html

(cl:defclass <PublishMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PublishMap-response (<PublishMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<PublishMap-response> is deprecated: use world_canvas_msgs-srv:PublishMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishMap-response>) ostream)
  "Serializes a message object of type '<PublishMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishMap-response>) istream)
  "Deserializes a message object of type '<PublishMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishMap-response>)))
  "Returns string type for a service object of type '<PublishMap-response>"
  "world_canvas_msgs/PublishMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap-response)))
  "Returns string type for a service object of type 'PublishMap-response"
  "world_canvas_msgs/PublishMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishMap-response>)))
  "Returns md5sum for a message object of type '<PublishMap-response>"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishMap-response)))
  "Returns md5sum for a message object of type 'PublishMap-response"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishMap-response>)))
  "Returns full string definition for message of type '<PublishMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishMap-response)))
  "Returns full string definition for message of type 'PublishMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PublishMap)))
  'PublishMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PublishMap)))
  'PublishMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap)))
  "Returns string type for a service object of type '<PublishMap>"
  "world_canvas_msgs/PublishMap")