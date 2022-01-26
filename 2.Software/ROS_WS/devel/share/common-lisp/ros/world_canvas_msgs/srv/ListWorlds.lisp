; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude ListWorlds-request.msg.html

(cl:defclass <ListWorlds-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListWorlds-request (<ListWorlds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListWorlds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListWorlds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ListWorlds-request> is deprecated: use world_canvas_msgs-srv:ListWorlds-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListWorlds-request>) ostream)
  "Serializes a message object of type '<ListWorlds-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListWorlds-request>) istream)
  "Deserializes a message object of type '<ListWorlds-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListWorlds-request>)))
  "Returns string type for a service object of type '<ListWorlds-request>"
  "world_canvas_msgs/ListWorldsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListWorlds-request)))
  "Returns string type for a service object of type 'ListWorlds-request"
  "world_canvas_msgs/ListWorldsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListWorlds-request>)))
  "Returns md5sum for a message object of type '<ListWorlds-request>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListWorlds-request)))
  "Returns md5sum for a message object of type 'ListWorlds-request"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListWorlds-request>)))
  "Returns full string definition for message of type '<ListWorlds-request>"
  (cl:format cl:nil "# Get a list of all the worlds in database.~%# TODO: following this issue (https://github.com/corot/world_canvas/issues/20) we may~%# enhance this service returning a list of WorldCanvas objects or something similar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListWorlds-request)))
  "Returns full string definition for message of type 'ListWorlds-request"
  (cl:format cl:nil "# Get a list of all the worlds in database.~%# TODO: following this issue (https://github.com/corot/world_canvas/issues/20) we may~%# enhance this service returning a list of WorldCanvas objects or something similar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListWorlds-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListWorlds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListWorlds-request
))
;//! \htmlinclude ListWorlds-response.msg.html

(cl:defclass <ListWorlds-response> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListWorlds-response (<ListWorlds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListWorlds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListWorlds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ListWorlds-response> is deprecated: use world_canvas_msgs-srv:ListWorlds-response instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <ListWorlds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:names-val is deprecated.  Use world_canvas_msgs-srv:names instead.")
  (names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListWorlds-response>) ostream)
  "Serializes a message object of type '<ListWorlds-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListWorlds-response>) istream)
  "Deserializes a message object of type '<ListWorlds-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListWorlds-response>)))
  "Returns string type for a service object of type '<ListWorlds-response>"
  "world_canvas_msgs/ListWorldsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListWorlds-response)))
  "Returns string type for a service object of type 'ListWorlds-response"
  "world_canvas_msgs/ListWorldsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListWorlds-response>)))
  "Returns md5sum for a message object of type '<ListWorlds-response>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListWorlds-response)))
  "Returns md5sum for a message object of type 'ListWorlds-response"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListWorlds-response>)))
  "Returns full string definition for message of type '<ListWorlds-response>"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListWorlds-response)))
  "Returns full string definition for message of type 'ListWorlds-response"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListWorlds-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListWorlds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListWorlds-response
    (cl:cons ':names (names msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListWorlds)))
  'ListWorlds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListWorlds)))
  'ListWorlds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListWorlds)))
  "Returns string type for a service object of type '<ListWorlds>"
  "world_canvas_msgs/ListWorlds")