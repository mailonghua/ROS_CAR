; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-msg)


;//! \htmlinclude MapListEntry.msg.html

(cl:defclass <MapListEntry> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (session_id
    :reader session_id
    :initarg :session_id
    :type cl:string
    :initform "")
   (date
    :reader date
    :initarg :date
    :type cl:integer
    :initform 0)
   (map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform ""))
)

(cl:defclass MapListEntry (<MapListEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapListEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapListEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-msg:<MapListEntry> is deprecated: use world_canvas_msgs-msg:MapListEntry instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MapListEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:name-val is deprecated.  Use world_canvas_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'session_id-val :lambda-list '(m))
(cl:defmethod session_id-val ((m <MapListEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:session_id-val is deprecated.  Use world_canvas_msgs-msg:session_id instead.")
  (session_id m))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <MapListEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:date-val is deprecated.  Use world_canvas_msgs-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <MapListEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:map_id-val is deprecated.  Use world_canvas_msgs-msg:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapListEntry>) ostream)
  "Serializes a message object of type '<MapListEntry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'session_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'session_id))
  (cl:let* ((signed (cl:slot-value msg 'date)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapListEntry>) istream)
  "Deserializes a message object of type '<MapListEntry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'session_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'session_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapListEntry>)))
  "Returns string type for a message object of type '<MapListEntry>"
  "world_canvas_msgs/MapListEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapListEntry)))
  "Returns string type for a message object of type 'MapListEntry"
  "world_canvas_msgs/MapListEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapListEntry>)))
  "Returns md5sum for a message object of type '<MapListEntry>"
  "092f024758d394d17196cd37d999fdb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapListEntry)))
  "Returns md5sum for a message object of type 'MapListEntry"
  "092f024758d394d17196cd37d999fdb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapListEntry>)))
  "Returns full string definition for message of type '<MapListEntry>"
  (cl:format cl:nil "# One entry in a list of maps.~%~%# Naming a map is optional.~%string name~%~%# Maps made by the make-a-map app are given a session ID, which is the~%# time when the map-making session was started, expressed as seconds~%# since the epoch and converted to a string.~%string session_id~%~%# Creation time of this map, in seconds since the epoch.~%int64 date~%~%# Unique ID of this map.~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapListEntry)))
  "Returns full string definition for message of type 'MapListEntry"
  (cl:format cl:nil "# One entry in a list of maps.~%~%# Naming a map is optional.~%string name~%~%# Maps made by the make-a-map app are given a session ID, which is the~%# time when the map-making session was started, expressed as seconds~%# since the epoch and converted to a string.~%string session_id~%~%# Creation time of this map, in seconds since the epoch.~%int64 date~%~%# Unique ID of this map.~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapListEntry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'session_id))
     8
     4 (cl:length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapListEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'MapListEntry
    (cl:cons ':name (name msg))
    (cl:cons ':session_id (session_id msg))
    (cl:cons ':date (date msg))
    (cl:cons ':map_id (map_id msg))
))
