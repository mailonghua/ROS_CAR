; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude DeleteMap-request.msg.html

(cl:defclass <DeleteMap-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteMap-request (<DeleteMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<DeleteMap-request> is deprecated: use world_canvas_msgs-srv:DeleteMap-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <DeleteMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:map_id-val is deprecated.  Use world_canvas_msgs-srv:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-request>) ostream)
  "Serializes a message object of type '<DeleteMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-request>) istream)
  "Deserializes a message object of type '<DeleteMap-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-request>)))
  "Returns string type for a service object of type '<DeleteMap-request>"
  "world_canvas_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-request)))
  "Returns string type for a service object of type 'DeleteMap-request"
  "world_canvas_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-request>)))
  "Returns md5sum for a message object of type '<DeleteMap-request>"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-request)))
  "Returns md5sum for a message object of type 'DeleteMap-request"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-request>)))
  "Returns full string definition for message of type '<DeleteMap-request>"
  (cl:format cl:nil "# Service used to delete a given map~%~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-request)))
  "Returns full string definition for message of type 'DeleteMap-request"
  (cl:format cl:nil "# Service used to delete a given map~%~%string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-request
    (cl:cons ':map_id (map_id msg))
))
;//! \htmlinclude DeleteMap-response.msg.html

(cl:defclass <DeleteMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteMap-response (<DeleteMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<DeleteMap-response> is deprecated: use world_canvas_msgs-srv:DeleteMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-response>) ostream)
  "Serializes a message object of type '<DeleteMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-response>) istream)
  "Deserializes a message object of type '<DeleteMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-response>)))
  "Returns string type for a service object of type '<DeleteMap-response>"
  "world_canvas_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-response)))
  "Returns string type for a service object of type 'DeleteMap-response"
  "world_canvas_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-response>)))
  "Returns md5sum for a message object of type '<DeleteMap-response>"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-response)))
  "Returns md5sum for a message object of type 'DeleteMap-response"
  "d742ddbd5e3e8937162044ae4b300275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-response>)))
  "Returns full string definition for message of type '<DeleteMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-response)))
  "Returns full string definition for message of type 'DeleteMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap)))
  "Returns string type for a service object of type '<DeleteMap>"
  "world_canvas_msgs/DeleteMap")