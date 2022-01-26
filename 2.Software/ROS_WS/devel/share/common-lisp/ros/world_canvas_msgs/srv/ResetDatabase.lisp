; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude ResetDatabase-request.msg.html

(cl:defclass <ResetDatabase-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetDatabase-request (<ResetDatabase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetDatabase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetDatabase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ResetDatabase-request> is deprecated: use world_canvas_msgs-srv:ResetDatabase-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetDatabase-request>) ostream)
  "Serializes a message object of type '<ResetDatabase-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetDatabase-request>) istream)
  "Deserializes a message object of type '<ResetDatabase-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetDatabase-request>)))
  "Returns string type for a service object of type '<ResetDatabase-request>"
  "world_canvas_msgs/ResetDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDatabase-request)))
  "Returns string type for a service object of type 'ResetDatabase-request"
  "world_canvas_msgs/ResetDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetDatabase-request>)))
  "Returns md5sum for a message object of type '<ResetDatabase-request>"
  "b543fbd3518c791be28589b850702201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetDatabase-request)))
  "Returns md5sum for a message object of type 'ResetDatabase-request"
  "b543fbd3518c791be28589b850702201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetDatabase-request>)))
  "Returns full string definition for message of type '<ResetDatabase-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetDatabase-request)))
  "Returns full string definition for message of type 'ResetDatabase-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetDatabase-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetDatabase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetDatabase-request
))
;//! \htmlinclude ResetDatabase-response.msg.html

(cl:defclass <ResetDatabase-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ResetDatabase-response (<ResetDatabase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetDatabase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetDatabase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<ResetDatabase-response> is deprecated: use world_canvas_msgs-srv:ResetDatabase-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ResetDatabase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ResetDatabase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetDatabase-response>) ostream)
  "Serializes a message object of type '<ResetDatabase-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetDatabase-response>) istream)
  "Deserializes a message object of type '<ResetDatabase-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetDatabase-response>)))
  "Returns string type for a service object of type '<ResetDatabase-response>"
  "world_canvas_msgs/ResetDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDatabase-response)))
  "Returns string type for a service object of type 'ResetDatabase-response"
  "world_canvas_msgs/ResetDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetDatabase-response>)))
  "Returns md5sum for a message object of type '<ResetDatabase-response>"
  "b543fbd3518c791be28589b850702201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetDatabase-response)))
  "Returns md5sum for a message object of type 'ResetDatabase-response"
  "b543fbd3518c791be28589b850702201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetDatabase-response>)))
  "Returns full string definition for message of type '<ResetDatabase-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetDatabase-response)))
  "Returns full string definition for message of type 'ResetDatabase-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetDatabase-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetDatabase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetDatabase-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetDatabase)))
  'ResetDatabase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetDatabase)))
  'ResetDatabase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDatabase)))
  "Returns string type for a service object of type '<ResetDatabase>"
  "world_canvas_msgs/ResetDatabase")