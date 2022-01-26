; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude PubAnnotationsData-request.msg.html

(cl:defclass <PubAnnotationsData-request> (roslisp-msg-protocol:ros-message)
  ((annotation_ids
    :reader annotation_ids
    :initarg :annotation_ids
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID)))
   (topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (topic_type
    :reader topic_type
    :initarg :topic_type
    :type cl:string
    :initform "")
   (pub_as_list
    :reader pub_as_list
    :initarg :pub_as_list
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PubAnnotationsData-request (<PubAnnotationsData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PubAnnotationsData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PubAnnotationsData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<PubAnnotationsData-request> is deprecated: use world_canvas_msgs-srv:PubAnnotationsData-request instead.")))

(cl:ensure-generic-function 'annotation_ids-val :lambda-list '(m))
(cl:defmethod annotation_ids-val ((m <PubAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotation_ids-val is deprecated.  Use world_canvas_msgs-srv:annotation_ids instead.")
  (annotation_ids m))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <PubAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:topic_name-val is deprecated.  Use world_canvas_msgs-srv:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'topic_type-val :lambda-list '(m))
(cl:defmethod topic_type-val ((m <PubAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:topic_type-val is deprecated.  Use world_canvas_msgs-srv:topic_type instead.")
  (topic_type m))

(cl:ensure-generic-function 'pub_as_list-val :lambda-list '(m))
(cl:defmethod pub_as_list-val ((m <PubAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:pub_as_list-val is deprecated.  Use world_canvas_msgs-srv:pub_as_list instead.")
  (pub_as_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PubAnnotationsData-request>) ostream)
  "Serializes a message object of type '<PubAnnotationsData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotation_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotation_ids))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pub_as_list) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PubAnnotationsData-request>) istream)
  "Deserializes a message object of type '<PubAnnotationsData-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'pub_as_list) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PubAnnotationsData-request>)))
  "Returns string type for a service object of type '<PubAnnotationsData-request>"
  "world_canvas_msgs/PubAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PubAnnotationsData-request)))
  "Returns string type for a service object of type 'PubAnnotationsData-request"
  "world_canvas_msgs/PubAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PubAnnotationsData-request>)))
  "Returns md5sum for a message object of type '<PubAnnotationsData-request>"
  "efc54bf1b4a6309b22d598d89ee85d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PubAnnotationsData-request)))
  "Returns md5sum for a message object of type 'PubAnnotationsData-request"
  "efc54bf1b4a6309b22d598d89ee85d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PubAnnotationsData-request>)))
  "Returns full string definition for message of type '<PubAnnotationsData-request>"
  (cl:format cl:nil "# Request server to publish annotations' data for a list of annotation identifiers~%# If pub_as_list is true, annotations will be packed in a list before publishing,~%# so topic_type must be an array of the requested annotations. However, if is false,~%# topic_type is just ignored and the published topic type is obtained from one of~%# the annotations in the list~%# NOTE: in both cases, all annotations must be of the same type~%~%uuid_msgs/UniqueID[] annotation_ids~%string topic_name~%string topic_type~%bool pub_as_list~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PubAnnotationsData-request)))
  "Returns full string definition for message of type 'PubAnnotationsData-request"
  (cl:format cl:nil "# Request server to publish annotations' data for a list of annotation identifiers~%# If pub_as_list is true, annotations will be packed in a list before publishing,~%# so topic_type must be an array of the requested annotations. However, if is false,~%# topic_type is just ignored and the published topic type is obtained from one of~%# the annotations in the list~%# NOTE: in both cases, all annotations must be of the same type~%~%uuid_msgs/UniqueID[] annotation_ids~%string topic_name~%string topic_type~%bool pub_as_list~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PubAnnotationsData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotation_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'topic_type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PubAnnotationsData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PubAnnotationsData-request
    (cl:cons ':annotation_ids (annotation_ids msg))
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':topic_type (topic_type msg))
    (cl:cons ':pub_as_list (pub_as_list msg))
))
;//! \htmlinclude PubAnnotationsData-response.msg.html

(cl:defclass <PubAnnotationsData-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PubAnnotationsData-response (<PubAnnotationsData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PubAnnotationsData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PubAnnotationsData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<PubAnnotationsData-response> is deprecated: use world_canvas_msgs-srv:PubAnnotationsData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PubAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PubAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PubAnnotationsData-response>) ostream)
  "Serializes a message object of type '<PubAnnotationsData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PubAnnotationsData-response>) istream)
  "Deserializes a message object of type '<PubAnnotationsData-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PubAnnotationsData-response>)))
  "Returns string type for a service object of type '<PubAnnotationsData-response>"
  "world_canvas_msgs/PubAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PubAnnotationsData-response)))
  "Returns string type for a service object of type 'PubAnnotationsData-response"
  "world_canvas_msgs/PubAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PubAnnotationsData-response>)))
  "Returns md5sum for a message object of type '<PubAnnotationsData-response>"
  "efc54bf1b4a6309b22d598d89ee85d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PubAnnotationsData-response)))
  "Returns md5sum for a message object of type 'PubAnnotationsData-response"
  "efc54bf1b4a6309b22d598d89ee85d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PubAnnotationsData-response>)))
  "Returns full string definition for message of type '<PubAnnotationsData-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PubAnnotationsData-response)))
  "Returns full string definition for message of type 'PubAnnotationsData-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PubAnnotationsData-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PubAnnotationsData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PubAnnotationsData-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PubAnnotationsData)))
  'PubAnnotationsData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PubAnnotationsData)))
  'PubAnnotationsData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PubAnnotationsData)))
  "Returns string type for a service object of type '<PubAnnotationsData>"
  "world_canvas_msgs/PubAnnotationsData")