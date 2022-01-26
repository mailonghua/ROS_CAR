; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude SetRelationship-request.msg.html

(cl:defclass <SetRelationship-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (relationship
    :reader relationship
    :initarg :relationship
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetRelationship-request (<SetRelationship-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRelationship-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRelationship-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SetRelationship-request> is deprecated: use world_canvas_msgs-srv:SetRelationship-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetRelationship-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:id-val is deprecated.  Use world_canvas_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'relationship-val :lambda-list '(m))
(cl:defmethod relationship-val ((m <SetRelationship-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:relationship-val is deprecated.  Use world_canvas_msgs-srv:relationship instead.")
  (relationship m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SetRelationship-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetRelationship-request>)))
    "Constants for message type '<SetRelationship-request>"
  '((:ADD . 1)
    (:DEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetRelationship-request)))
    "Constants for message type 'SetRelationship-request"
  '((:ADD . 1)
    (:DEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRelationship-request>) ostream)
  "Serializes a message object of type '<SetRelationship-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relationship) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRelationship-request>) istream)
  "Deserializes a message object of type '<SetRelationship-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relationship) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRelationship-request>)))
  "Returns string type for a service object of type '<SetRelationship-request>"
  "world_canvas_msgs/SetRelationshipRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRelationship-request)))
  "Returns string type for a service object of type 'SetRelationship-request"
  "world_canvas_msgs/SetRelationshipRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRelationship-request>)))
  "Returns md5sum for a message object of type '<SetRelationship-request>"
  "c1d8b7af22a1ce2dc6c177d3ab941e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRelationship-request)))
  "Returns md5sum for a message object of type 'SetRelationship-request"
  "c1d8b7af22a1ce2dc6c177d3ab941e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRelationship-request>)))
  "Returns full string definition for message of type '<SetRelationship-request>"
  (cl:format cl:nil "# Add/remove a specific relationship to the specified annotation~%uint8 ADD = 1~%uint8 DEL = 2~%~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID relationship~%uint8 action~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRelationship-request)))
  "Returns full string definition for message of type 'SetRelationship-request"
  (cl:format cl:nil "# Add/remove a specific relationship to the specified annotation~%uint8 ADD = 1~%uint8 DEL = 2~%~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID relationship~%uint8 action~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRelationship-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relationship))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRelationship-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRelationship-request
    (cl:cons ':id (id msg))
    (cl:cons ':relationship (relationship msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude SetRelationship-response.msg.html

(cl:defclass <SetRelationship-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetRelationship-response (<SetRelationship-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRelationship-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRelationship-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SetRelationship-response> is deprecated: use world_canvas_msgs-srv:SetRelationship-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetRelationship-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetRelationship-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRelationship-response>) ostream)
  "Serializes a message object of type '<SetRelationship-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRelationship-response>) istream)
  "Deserializes a message object of type '<SetRelationship-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRelationship-response>)))
  "Returns string type for a service object of type '<SetRelationship-response>"
  "world_canvas_msgs/SetRelationshipResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRelationship-response)))
  "Returns string type for a service object of type 'SetRelationship-response"
  "world_canvas_msgs/SetRelationshipResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRelationship-response>)))
  "Returns md5sum for a message object of type '<SetRelationship-response>"
  "c1d8b7af22a1ce2dc6c177d3ab941e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRelationship-response)))
  "Returns md5sum for a message object of type 'SetRelationship-response"
  "c1d8b7af22a1ce2dc6c177d3ab941e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRelationship-response>)))
  "Returns full string definition for message of type '<SetRelationship-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRelationship-response)))
  "Returns full string definition for message of type 'SetRelationship-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRelationship-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRelationship-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRelationship-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRelationship)))
  'SetRelationship-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRelationship)))
  'SetRelationship-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRelationship)))
  "Returns string type for a service object of type '<SetRelationship>"
  "world_canvas_msgs/SetRelationship")