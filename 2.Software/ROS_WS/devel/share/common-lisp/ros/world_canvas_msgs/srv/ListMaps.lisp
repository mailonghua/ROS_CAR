; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude ListMaps-request.msg.html

(cl:defclass <ListMaps-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListMaps-request (<ListMaps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListMaps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListMaps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ListMaps-request> is deprecated: use world_canvas_msgs-srv:ListMaps-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListMaps-request>) ostream)
  "Serializes a message object of type '<ListMaps-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListMaps-request>) istream)
  "Deserializes a message object of type '<ListMaps-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListMaps-request>)))
  "Returns string type for a service object of type '<ListMaps-request>"
  "world_canvas_msgs/ListMapsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps-request)))
  "Returns string type for a service object of type 'ListMaps-request"
  "world_canvas_msgs/ListMapsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListMaps-request>)))
  "Returns md5sum for a message object of type '<ListMaps-request>"
  "ca5a33dd106a2c24cfd54c927d214957")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListMaps-request)))
  "Returns md5sum for a message object of type 'ListMaps-request"
  "ca5a33dd106a2c24cfd54c927d214957")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListMaps-request>)))
  "Returns full string definition for message of type '<ListMaps-request>"
  (cl:format cl:nil "# Service used to list the most recent map from every map-making session.~%~%# No arguments at this time.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListMaps-request)))
  "Returns full string definition for message of type 'ListMaps-request"
  (cl:format cl:nil "# Service used to list the most recent map from every map-making session.~%~%# No arguments at this time.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListMaps-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListMaps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListMaps-request
))
;//! \htmlinclude ListMaps-response.msg.html

(cl:defclass <ListMaps-response> (roslisp-msg-protocol:ros-message)
  ((map_list
    :reader map_list
    :initarg :map_list
    :type (cl:vector world_canvas_msgs-msg:MapListEntry)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:MapListEntry :initial-element (cl:make-instance 'world_canvas_msgs-msg:MapListEntry))))
)

(cl:defclass ListMaps-response (<ListMaps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListMaps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListMaps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ListMaps-response> is deprecated: use world_canvas_msgs-srv:ListMaps-response instead.")))

(cl:ensure-generic-function 'map_list-val :lambda-list '(m))
(cl:defmethod map_list-val ((m <ListMaps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:map_list-val is deprecated.  Use world_canvas_msgs-srv:map_list instead.")
  (map_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListMaps-response>) ostream)
  "Serializes a message object of type '<ListMaps-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListMaps-response>) istream)
  "Deserializes a message object of type '<ListMaps-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'world_canvas_msgs-msg:MapListEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListMaps-response>)))
  "Returns string type for a service object of type '<ListMaps-response>"
  "world_canvas_msgs/ListMapsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps-response)))
  "Returns string type for a service object of type 'ListMaps-response"
  "world_canvas_msgs/ListMapsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListMaps-response>)))
  "Returns md5sum for a message object of type '<ListMaps-response>"
  "ca5a33dd106a2c24cfd54c927d214957")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListMaps-response)))
  "Returns md5sum for a message object of type 'ListMaps-response"
  "ca5a33dd106a2c24cfd54c927d214957")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListMaps-response>)))
  "Returns full string definition for message of type '<ListMaps-response>"
  (cl:format cl:nil "MapListEntry[] map_list~%~%~%================================================================================~%MSG: world_canvas_msgs/MapListEntry~%# One entry in a list of maps.~%~%# Naming a map is optional.~%string name~%~%# Maps made by the make-a-map app are given a session ID, which is the~%# time when the map-making session was started, expressed as seconds~%# since the epoch and converted to a string.~%string session_id~%~%# Creation time of this map, in seconds since the epoch.~%int64 date~%~%# Unique ID of this map.~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListMaps-response)))
  "Returns full string definition for message of type 'ListMaps-response"
  (cl:format cl:nil "MapListEntry[] map_list~%~%~%================================================================================~%MSG: world_canvas_msgs/MapListEntry~%# One entry in a list of maps.~%~%# Naming a map is optional.~%string name~%~%# Maps made by the make-a-map app are given a session ID, which is the~%# time when the map-making session was started, expressed as seconds~%# since the epoch and converted to a string.~%string session_id~%~%# Creation time of this map, in seconds since the epoch.~%int64 date~%~%# Unique ID of this map.~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListMaps-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListMaps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListMaps-response
    (cl:cons ':map_list (map_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListMaps)))
  'ListMaps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListMaps)))
  'ListMaps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps)))
  "Returns string type for a service object of type '<ListMaps>"
  "world_canvas_msgs/ListMaps")