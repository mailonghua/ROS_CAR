; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-msg)


;//! \htmlinclude AnnotationData.msg.html

(cl:defclass <AnnotationData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AnnotationData (<AnnotationData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-msg:<AnnotationData> is deprecated: use world_canvas_msgs-msg:AnnotationData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AnnotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:id-val is deprecated.  Use world_canvas_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AnnotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:type-val is deprecated.  Use world_canvas_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AnnotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:data-val is deprecated.  Use world_canvas_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationData>) ostream)
  "Serializes a message object of type '<AnnotationData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationData>) istream)
  "Deserializes a message object of type '<AnnotationData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationData>)))
  "Returns string type for a message object of type '<AnnotationData>"
  "world_canvas_msgs/AnnotationData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationData)))
  "Returns string type for a message object of type 'AnnotationData"
  "world_canvas_msgs/AnnotationData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationData>)))
  "Returns md5sum for a message object of type '<AnnotationData>"
  "e21002b6b9f6af72d6986a93e819ba1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationData)))
  "Returns md5sum for a message object of type 'AnnotationData"
  "e21002b6b9f6af72d6986a93e819ba1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationData>)))
  "Returns full string definition for message of type '<AnnotationData>"
  (cl:format cl:nil "# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationData)))
  "Returns full string definition for message of type 'AnnotationData"
  (cl:format cl:nil "# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationData>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationData
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
