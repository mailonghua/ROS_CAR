; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-msg)


;//! \htmlinclude Frontier.msg.html

(cl:defclass <Frontier> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (min_distance
    :reader min_distance
    :initarg :min_distance
    :type cl:float
    :initform 0.0)
   (travel_point
    :reader travel_point
    :initarg :travel_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Frontier (<Frontier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frontier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frontier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-msg:<Frontier> is deprecated: use frontier_exploration-msg:Frontier instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Frontier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-msg:size-val is deprecated.  Use frontier_exploration-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'min_distance-val :lambda-list '(m))
(cl:defmethod min_distance-val ((m <Frontier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-msg:min_distance-val is deprecated.  Use frontier_exploration-msg:min_distance instead.")
  (min_distance m))

(cl:ensure-generic-function 'travel_point-val :lambda-list '(m))
(cl:defmethod travel_point-val ((m <Frontier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-msg:travel_point-val is deprecated.  Use frontier_exploration-msg:travel_point instead.")
  (travel_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frontier>) ostream)
  "Serializes a message object of type '<Frontier>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'travel_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frontier>) istream)
  "Deserializes a message object of type '<Frontier>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_distance) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'travel_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frontier>)))
  "Returns string type for a message object of type '<Frontier>"
  "frontier_exploration/Frontier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frontier)))
  "Returns string type for a message object of type 'Frontier"
  "frontier_exploration/Frontier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frontier>)))
  "Returns md5sum for a message object of type '<Frontier>"
  "8e57df42619e81a60a4a5920d716e4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frontier)))
  "Returns md5sum for a message object of type 'Frontier"
  "8e57df42619e81a60a4a5920d716e4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frontier>)))
  "Returns full string definition for message of type '<Frontier>"
  (cl:format cl:nil "uint32 size~%float64 min_distance~%geometry_msgs/Point travel_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frontier)))
  "Returns full string definition for message of type 'Frontier"
  (cl:format cl:nil "uint32 size~%float64 min_distance~%geometry_msgs/Point travel_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frontier>))
  (cl:+ 0
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'travel_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frontier>))
  "Converts a ROS message object to a list"
  (cl:list 'Frontier
    (cl:cons ':size (size msg))
    (cl:cons ':min_distance (min_distance msg))
    (cl:cons ':travel_point (travel_point msg))
))
