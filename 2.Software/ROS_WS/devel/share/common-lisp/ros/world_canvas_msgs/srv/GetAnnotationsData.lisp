; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude GetAnnotationsData-request.msg.html

(cl:defclass <GetAnnotationsData-request> (roslisp-msg-protocol:ros-message)
  ((annotation_ids
    :reader annotation_ids
    :initarg :annotation_ids
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID))))
)

(cl:defclass GetAnnotationsData-request (<GetAnnotationsData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAnnotationsData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAnnotationsData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<GetAnnotationsData-request> is deprecated: use world_canvas_msgs-srv:GetAnnotationsData-request instead.")))

(cl:ensure-generic-function 'annotation_ids-val :lambda-list '(m))
(cl:defmethod annotation_ids-val ((m <GetAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotation_ids-val is deprecated.  Use world_canvas_msgs-srv:annotation_ids instead.")
  (annotation_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAnnotationsData-request>) ostream)
  "Serializes a message object of type '<GetAnnotationsData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotation_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotation_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAnnotationsData-request>) istream)
  "Deserializes a message object of type '<GetAnnotationsData-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotation_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotation_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'uuid_msgs-msg:UniqueID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAnnotationsData-request>)))
  "Returns string type for a service object of type '<GetAnnotationsData-request>"
  "world_canvas_msgs/GetAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnnotationsData-request)))
  "Returns string type for a service object of type 'GetAnnotationsData-request"
  "world_canvas_msgs/GetAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAnnotationsData-request>)))
  "Returns md5sum for a message object of type '<GetAnnotationsData-request>"
  "91d9a7f0b1315b44e207eeb7e9326135")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAnnotationsData-request)))
  "Returns md5sum for a message object of type 'GetAnnotationsData-request"
  "91d9a7f0b1315b44e207eeb7e9326135")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAnnotationsData-request>)))
  "Returns full string definition for message of type '<GetAnnotationsData-request>"
  (cl:format cl:nil "# Request annotations' data for a list of annotation identifiers~%~%uuid_msgs/UniqueID[] annotation_ids~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAnnotationsData-request)))
  "Returns full string definition for message of type 'GetAnnotationsData-request"
  (cl:format cl:nil "# Request annotations' data for a list of annotation identifiers~%~%uuid_msgs/UniqueID[] annotation_ids~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAnnotationsData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotation_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAnnotationsData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAnnotationsData-request
    (cl:cons ':annotation_ids (annotation_ids msg))
))
;//! \htmlinclude GetAnnotationsData-response.msg.html

(cl:defclass <GetAnnotationsData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector world_canvas_msgs-msg:AnnotationData)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:AnnotationData :initial-element (cl:make-instance 'world_canvas_msgs-msg:AnnotationData))))
)

(cl:defclass GetAnnotationsData-response (<GetAnnotationsData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAnnotationsData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAnnotationsData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<GetAnnotationsData-response> is deprecated: use world_canvas_msgs-srv:GetAnnotationsData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAnnotationsData-response>) ostream)
  "Serializes a message object of type '<GetAnnotationsData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAnnotationsData-response>) istream)
  "Deserializes a message object of type '<GetAnnotationsData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'world_canvas_msgs-msg:AnnotationData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAnnotationsData-response>)))
  "Returns string type for a service object of type '<GetAnnotationsData-response>"
  "world_canvas_msgs/GetAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnnotationsData-response)))
  "Returns string type for a service object of type 'GetAnnotationsData-response"
  "world_canvas_msgs/GetAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAnnotationsData-response>)))
  "Returns md5sum for a message object of type '<GetAnnotationsData-response>"
  "91d9a7f0b1315b44e207eeb7e9326135")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAnnotationsData-response)))
  "Returns md5sum for a message object of type 'GetAnnotationsData-response"
  "91d9a7f0b1315b44e207eeb7e9326135")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAnnotationsData-response>)))
  "Returns full string definition for message of type '<GetAnnotationsData-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%AnnotationData[] data ~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAnnotationsData-response)))
  "Returns full string definition for message of type 'GetAnnotationsData-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%AnnotationData[] data ~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAnnotationsData-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAnnotationsData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAnnotationsData-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAnnotationsData)))
  'GetAnnotationsData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAnnotationsData)))
  'GetAnnotationsData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnnotationsData)))
  "Returns string type for a service object of type '<GetAnnotationsData>"
  "world_canvas_msgs/GetAnnotationsData")