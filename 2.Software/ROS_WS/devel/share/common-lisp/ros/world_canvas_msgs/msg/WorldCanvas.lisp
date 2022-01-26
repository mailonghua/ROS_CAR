; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-msg)


;//! \htmlinclude WorldCanvas.msg.html

(cl:defclass <WorldCanvas> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (geometry
    :reader geometry
    :initarg :geometry
    :type cl:string
    :initform ""))
)

(cl:defclass WorldCanvas (<WorldCanvas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldCanvas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldCanvas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-msg:<WorldCanvas> is deprecated: use world_canvas_msgs-msg:WorldCanvas instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <WorldCanvas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:timestamp-val is deprecated.  Use world_canvas_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WorldCanvas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:name-val is deprecated.  Use world_canvas_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <WorldCanvas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:description-val is deprecated.  Use world_canvas_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'geometry-val :lambda-list '(m))
(cl:defmethod geometry-val ((m <WorldCanvas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:geometry-val is deprecated.  Use world_canvas_msgs-msg:geometry instead.")
  (geometry m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldCanvas>) ostream)
  "Serializes a message object of type '<WorldCanvas>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'geometry))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'geometry))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldCanvas>) istream)
  "Deserializes a message object of type '<WorldCanvas>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'geometry) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'geometry) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldCanvas>)))
  "Returns string type for a message object of type '<WorldCanvas>"
  "world_canvas_msgs/WorldCanvas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldCanvas)))
  "Returns string type for a message object of type 'WorldCanvas"
  "world_canvas_msgs/WorldCanvas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldCanvas>)))
  "Returns md5sum for a message object of type '<WorldCanvas>"
  "6d7c521a48d85a2b09f0d0c03fe5f648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldCanvas)))
  "Returns md5sum for a message object of type 'WorldCanvas"
  "6d7c521a48d85a2b09f0d0c03fe5f648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldCanvas>)))
  "Returns full string definition for message of type '<WorldCanvas>"
  (cl:format cl:nil "# World canvas: a generic descriptor for a world, typically containing one or more geometric maps~%# plus semantic information in the form of annotations.~%#  - timestamp   : Creation/last update time~%#  - name        : World name; it must be unique~%#  - description : Informal description~%#  - geometry    : 2D, 3D (just informative by now)~%~%time timestamp~%string name~%string description~%string geometry~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldCanvas)))
  "Returns full string definition for message of type 'WorldCanvas"
  (cl:format cl:nil "# World canvas: a generic descriptor for a world, typically containing one or more geometric maps~%# plus semantic information in the form of annotations.~%#  - timestamp   : Creation/last update time~%#  - name        : World name; it must be unique~%#  - description : Informal description~%#  - geometry    : 2D, 3D (just informative by now)~%~%time timestamp~%string name~%string description~%string geometry~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldCanvas>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'geometry))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldCanvas>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldCanvas
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':geometry (geometry msg))
))
