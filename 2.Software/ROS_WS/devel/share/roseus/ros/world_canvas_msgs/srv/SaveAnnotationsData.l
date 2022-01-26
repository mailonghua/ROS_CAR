;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::SaveAnnotationsData)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'SaveAnnotationsData (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATA")
  (make-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATA"))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATAREQUEST")
  (make-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATAREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATARESPONSE")
  (make-package "WORLD_CANVAS_MSGS::SAVEANNOTATIONSDATARESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::SaveAnnotationsDataRequest
  :super ros::object
  :slots (_annotations _data ))

(defmethod world_canvas_msgs::SaveAnnotationsDataRequest
  (:init
   (&key
    ((:annotations __annotations) (let (r) (dotimes (i 0) (push (instance world_canvas_msgs::Annotation :init) r)) r))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance world_canvas_msgs::AnnotationData :init) r)) r))
    )
   (send-super :init)
   (setq _annotations __annotations)
   (setq _data __data)
   self)
  (:annotations
   (&rest __annotations)
   (if (keywordp (car __annotations))
       (send* _annotations __annotations)
     (progn
       (if __annotations (setq _annotations (car __annotations)))
       _annotations)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; world_canvas_msgs/Annotation[] _annotations
    (apply #'+ (send-all _annotations :serialization-length)) 4
    ;; world_canvas_msgs/AnnotationData[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; world_canvas_msgs/Annotation[] _annotations
     (write-long (length _annotations) s)
     (dolist (elem _annotations)
       (send elem :serialize s)
       )
     ;; world_canvas_msgs/AnnotationData[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; world_canvas_msgs/Annotation[] _annotations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _annotations (let (r) (dotimes (i n) (push (instance world_canvas_msgs::Annotation :init) r)) r))
     (dolist (elem- _annotations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; world_canvas_msgs/AnnotationData[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance world_canvas_msgs::AnnotationData :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::SaveAnnotationsDataResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::SaveAnnotationsDataResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::SaveAnnotationsData
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::SaveAnnotationsData :md5sum-) "60d78492918896c3c2a6be65553f2c9e")
(setf (get world_canvas_msgs::SaveAnnotationsData :datatype-) "world_canvas_msgs/SaveAnnotationsData")
(setf (get world_canvas_msgs::SaveAnnotationsData :request) world_canvas_msgs::SaveAnnotationsDataRequest)
(setf (get world_canvas_msgs::SaveAnnotationsData :response) world_canvas_msgs::SaveAnnotationsDataResponse)

(defmethod world_canvas_msgs::SaveAnnotationsDataRequest
  (:response () (instance world_canvas_msgs::SaveAnnotationsDataResponse :init)))

(setf (get world_canvas_msgs::SaveAnnotationsDataRequest :md5sum-) "60d78492918896c3c2a6be65553f2c9e")
(setf (get world_canvas_msgs::SaveAnnotationsDataRequest :datatype-) "world_canvas_msgs/SaveAnnotationsDataRequest")
(setf (get world_canvas_msgs::SaveAnnotationsDataRequest :definition-)
      "# Utility service kept to make debug and testing easier:
#   saves together annotations and its data assuming a 1-1 relationship.

Annotation[] annotations
AnnotationData[] data 

================================================================================
MSG: world_canvas_msgs/Annotation
# Annotation: a generic descriptor for an element (object) in a semantic map
# An annotation can be used to introspect, visualize or key into database filters/searches without
# having to touch the described object directly
#  - timestamp : Creation/last update time
#  - world     : World the object belongs to
#  - id        : Annotation unique id
#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)
#  - name      : Referenced object name
#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)
#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)
#  - color     : R, G, B, A (optional)
#  - size      : X, Y, Z (optional)
#  - keywords  : Generic properties of this object: allows basic filtering without introspecting
#                the object itself
#  - relationships : List of associated annotations, used for retrieving operational sets of objects

# General properties
time timestamp
uuid_msgs/UniqueID id
uuid_msgs/UniqueID data_id
string world
string name
string type

# Physical properties
int32  shape
std_msgs/ColorRGBA color
geometry_msgs/Vector3 size
geometry_msgs/PoseWithCovarianceStamped pose

# Querying properties
string[] keywords
uuid_msgs/UniqueID[] relationships

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: world_canvas_msgs/AnnotationData
# Data for an element in a semantic map stored as a byte array generated by ros::serialization
# These objects are unique, although they can be referenced by one or more annotations
#  - id   : Object unique id; data_id field on Annotation messages point to this uuid
#  - type : Object type; duplicated from annotation for convenience on deserialization
#  - data : Serialized data
uuid_msgs/UniqueID id
string type
uint8[] data
---
# What went wrong, if anything
bool result
string message

")

(setf (get world_canvas_msgs::SaveAnnotationsDataResponse :md5sum-) "60d78492918896c3c2a6be65553f2c9e")
(setf (get world_canvas_msgs::SaveAnnotationsDataResponse :datatype-) "world_canvas_msgs/SaveAnnotationsDataResponse")
(setf (get world_canvas_msgs::SaveAnnotationsDataResponse :definition-)
      "# Utility service kept to make debug and testing easier:
#   saves together annotations and its data assuming a 1-1 relationship.

Annotation[] annotations
AnnotationData[] data 

================================================================================
MSG: world_canvas_msgs/Annotation
# Annotation: a generic descriptor for an element (object) in a semantic map
# An annotation can be used to introspect, visualize or key into database filters/searches without
# having to touch the described object directly
#  - timestamp : Creation/last update time
#  - world     : World the object belongs to
#  - id        : Annotation unique id
#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)
#  - name      : Referenced object name
#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)
#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)
#  - color     : R, G, B, A (optional)
#  - size      : X, Y, Z (optional)
#  - keywords  : Generic properties of this object: allows basic filtering without introspecting
#                the object itself
#  - relationships : List of associated annotations, used for retrieving operational sets of objects

# General properties
time timestamp
uuid_msgs/UniqueID id
uuid_msgs/UniqueID data_id
string world
string name
string type

# Physical properties
int32  shape
std_msgs/ColorRGBA color
geometry_msgs/Vector3 size
geometry_msgs/PoseWithCovarianceStamped pose

# Querying properties
string[] keywords
uuid_msgs/UniqueID[] relationships

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: world_canvas_msgs/AnnotationData
# Data for an element in a semantic map stored as a byte array generated by ros::serialization
# These objects are unique, although they can be referenced by one or more annotations
#  - id   : Object unique id; data_id field on Annotation messages point to this uuid
#  - type : Object type; duplicated from annotation for convenience on deserialization
#  - data : Serialized data
uuid_msgs/UniqueID id
string type
uint8[] data
---
# What went wrong, if anything
bool result
string message

")



(provide :world_canvas_msgs/SaveAnnotationsData "60d78492918896c3c2a6be65553f2c9e")


