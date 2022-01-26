; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude EditAnnotationsData-request.msg.html

(cl:defclass <EditAnnotationsData-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (annotation
    :reader annotation
    :initarg :annotation
    :type world_canvas_msgs-msg:Annotation
    :initform (cl:make-instance 'world_canvas_msgs-msg:Annotation))
   (data
    :reader data
    :initarg :data
    :type world_canvas_msgs-msg:AnnotationData
    :initform (cl:make-instance 'world_canvas_msgs-msg:AnnotationData)))
)

(cl:defclass EditAnnotationsData-request (<EditAnnotationsData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditAnnotationsData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditAnnotationsData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<EditAnnotationsData-request> is deprecated: use world_canvas_msgs-srv:EditAnnotationsData-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'annotation-val :lambda-list '(m))
(cl:defmethod annotation-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotation-val is deprecated.  Use world_canvas_msgs-srv:annotation instead.")
  (annotation m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditAnnotationsData-request>)))
    "Constants for message type '<EditAnnotationsData-request>"
  '((:NEW . 0)
    (:EDIT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditAnnotationsData-request)))
    "Constants for message type 'EditAnnotationsData-request"
  '((:NEW . 0)
    (:EDIT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditAnnotationsData-request>) ostream)
  "Serializes a message object of type '<EditAnnotationsData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'annotation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditAnnotationsData-request>) istream)
  "Deserializes a message object of type '<EditAnnotationsData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'annotation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditAnnotationsData-request>)))
  "Returns string type for a service object of type '<EditAnnotationsData-request>"
  "world_canvas_msgs/EditAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData-request)))
  "Returns string type for a service object of type 'EditAnnotationsData-request"
  "world_canvas_msgs/EditAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditAnnotationsData-request>)))
  "Returns md5sum for a message object of type '<EditAnnotationsData-request>"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditAnnotationsData-request)))
  "Returns md5sum for a message object of type 'EditAnnotationsData-request"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditAnnotationsData-request>)))
  "Returns full string definition for message of type '<EditAnnotationsData-request>"
  (cl:format cl:nil "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation~%# itself is passed just for information, to show extra information to the user or assist data edition,~%# but will not be changed.~%#  - On request, action involves whether the editor must show the given data or create it from scratch~%#  - On response, action provides the user choice concerning what to do with old and new annotation data~%~%uint8 NEW=0~%uint8 EDIT=1~%~%uint8 action~%~%Annotation annotation~%AnnotationData data~%~%================================================================================~%MSG: world_canvas_msgs/Annotation~%# Annotation: a generic descriptor for an element (object) in a semantic map~%# An annotation can be used to introspect, visualize or key into database filters/searches without~%# having to touch the described object directly~%#  - timestamp : Creation/last update time~%#  - world     : World the object belongs to~%#  - id        : Annotation unique id~%#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)~%#  - name      : Referenced object name~%#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)~%#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)~%#  - color     : R, G, B, A (optional)~%#  - size      : X, Y, Z (optional)~%#  - keywords  : Generic properties of this object: allows basic filtering without introspecting~%#                the object itself~%#  - relationships : List of associated annotations, used for retrieving operational sets of objects~%~%# General properties~%time timestamp~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID data_id~%string world~%string name~%string type~%~%# Physical properties~%int32  shape~%std_msgs/ColorRGBA color~%geometry_msgs/Vector3 size~%geometry_msgs/PoseWithCovarianceStamped pose~%~%# Querying properties~%string[] keywords~%uuid_msgs/UniqueID[] relationships~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditAnnotationsData-request)))
  "Returns full string definition for message of type 'EditAnnotationsData-request"
  (cl:format cl:nil "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation~%# itself is passed just for information, to show extra information to the user or assist data edition,~%# but will not be changed.~%#  - On request, action involves whether the editor must show the given data or create it from scratch~%#  - On response, action provides the user choice concerning what to do with old and new annotation data~%~%uint8 NEW=0~%uint8 EDIT=1~%~%uint8 action~%~%Annotation annotation~%AnnotationData data~%~%================================================================================~%MSG: world_canvas_msgs/Annotation~%# Annotation: a generic descriptor for an element (object) in a semantic map~%# An annotation can be used to introspect, visualize or key into database filters/searches without~%# having to touch the described object directly~%#  - timestamp : Creation/last update time~%#  - world     : World the object belongs to~%#  - id        : Annotation unique id~%#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)~%#  - name      : Referenced object name~%#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)~%#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)~%#  - color     : R, G, B, A (optional)~%#  - size      : X, Y, Z (optional)~%#  - keywords  : Generic properties of this object: allows basic filtering without introspecting~%#                the object itself~%#  - relationships : List of associated annotations, used for retrieving operational sets of objects~%~%# General properties~%time timestamp~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID data_id~%string world~%string name~%string type~%~%# Physical properties~%int32  shape~%std_msgs/ColorRGBA color~%geometry_msgs/Vector3 size~%geometry_msgs/PoseWithCovarianceStamped pose~%~%# Querying properties~%string[] keywords~%uuid_msgs/UniqueID[] relationships~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditAnnotationsData-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'annotation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditAnnotationsData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditAnnotationsData-request
    (cl:cons ':action (action msg))
    (cl:cons ':annotation (annotation msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude EditAnnotationsData-response.msg.html

(cl:defclass <EditAnnotationsData-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type world_canvas_msgs-msg:AnnotationData
    :initform (cl:make-instance 'world_canvas_msgs-msg:AnnotationData)))
)

(cl:defclass EditAnnotationsData-response (<EditAnnotationsData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditAnnotationsData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditAnnotationsData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<EditAnnotationsData-response> is deprecated: use world_canvas_msgs-srv:EditAnnotationsData-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EditAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EditAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditAnnotationsData-response>)))
    "Constants for message type '<EditAnnotationsData-response>"
  '((:UPDATE . 10)
    (:DELETE . 12)
    (:CANCEL . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditAnnotationsData-response)))
    "Constants for message type 'EditAnnotationsData-response"
  '((:UPDATE . 10)
    (:DELETE . 12)
    (:CANCEL . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditAnnotationsData-response>) ostream)
  "Serializes a message object of type '<EditAnnotationsData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditAnnotationsData-response>) istream)
  "Deserializes a message object of type '<EditAnnotationsData-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditAnnotationsData-response>)))
  "Returns string type for a service object of type '<EditAnnotationsData-response>"
  "world_canvas_msgs/EditAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData-response)))
  "Returns string type for a service object of type 'EditAnnotationsData-response"
  "world_canvas_msgs/EditAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditAnnotationsData-response>)))
  "Returns md5sum for a message object of type '<EditAnnotationsData-response>"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditAnnotationsData-response)))
  "Returns md5sum for a message object of type 'EditAnnotationsData-response"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditAnnotationsData-response>)))
  "Returns full string definition for message of type '<EditAnnotationsData-response>"
  (cl:format cl:nil "uint8 UPDATE=10~%uint8 DELETE=12~%uint8 CANCEL=13~%~%uint8 action~%~%AnnotationData data ~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditAnnotationsData-response)))
  "Returns full string definition for message of type 'EditAnnotationsData-response"
  (cl:format cl:nil "uint8 UPDATE=10~%uint8 DELETE=12~%uint8 CANCEL=13~%~%uint8 action~%~%AnnotationData data ~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditAnnotationsData-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditAnnotationsData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditAnnotationsData-response
    (cl:cons ':action (action msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditAnnotationsData)))
  'EditAnnotationsData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditAnnotationsData)))
  'EditAnnotationsData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData)))
  "Returns string type for a service object of type '<EditAnnotationsData>"
  "world_canvas_msgs/EditAnnotationsData")