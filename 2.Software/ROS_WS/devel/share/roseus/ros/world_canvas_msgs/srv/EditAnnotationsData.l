;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::EditAnnotationsData)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'EditAnnotationsData (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATA")
  (make-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATA"))
(unless (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST")
  (make-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE")
  (make-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))

(in-package "ROS")





(intern "*NEW*" (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST"))
(shadow '*NEW* (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST"))
(defconstant world_canvas_msgs::EditAnnotationsDataRequest::*NEW* 0)
(intern "*EDIT*" (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST"))
(shadow '*EDIT* (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATAREQUEST"))
(defconstant world_canvas_msgs::EditAnnotationsDataRequest::*EDIT* 1)
(defclass world_canvas_msgs::EditAnnotationsDataRequest
  :super ros::object
  :slots (_action _annotation _data ))

(defmethod world_canvas_msgs::EditAnnotationsDataRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:annotation __annotation) (instance world_canvas_msgs::Annotation :init))
    ((:data __data) (instance world_canvas_msgs::AnnotationData :init))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _annotation __annotation)
   (setq _data __data)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:annotation
   (&rest __annotation)
   (if (keywordp (car __annotation))
       (send* _annotation __annotation)
     (progn
       (if __annotation (setq _annotation (car __annotation)))
       _annotation)))
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
    ;; uint8 _action
    1
    ;; world_canvas_msgs/Annotation _annotation
    (send _annotation :serialization-length)
    ;; world_canvas_msgs/AnnotationData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; world_canvas_msgs/Annotation _annotation
       (send _annotation :serialize s)
     ;; world_canvas_msgs/AnnotationData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; world_canvas_msgs/Annotation _annotation
     (send _annotation :deserialize buf ptr-) (incf ptr- (send _annotation :serialization-length))
   ;; world_canvas_msgs/AnnotationData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(intern "*UPDATE*" (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(shadow '*UPDATE* (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(defconstant world_canvas_msgs::EditAnnotationsDataResponse::*UPDATE* 10)
(intern "*DELETE*" (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(shadow '*DELETE* (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(defconstant world_canvas_msgs::EditAnnotationsDataResponse::*DELETE* 12)
(intern "*CANCEL*" (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(shadow '*CANCEL* (find-package "WORLD_CANVAS_MSGS::EDITANNOTATIONSDATARESPONSE"))
(defconstant world_canvas_msgs::EditAnnotationsDataResponse::*CANCEL* 13)
(defclass world_canvas_msgs::EditAnnotationsDataResponse
  :super ros::object
  :slots (_action _data ))

(defmethod world_canvas_msgs::EditAnnotationsDataResponse
  (:init
   (&key
    ((:action __action) 0)
    ((:data __data) (instance world_canvas_msgs::AnnotationData :init))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _data __data)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
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
    ;; uint8 _action
    1
    ;; world_canvas_msgs/AnnotationData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; world_canvas_msgs/AnnotationData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; world_canvas_msgs/AnnotationData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass world_canvas_msgs::EditAnnotationsData
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::EditAnnotationsData :md5sum-) "457c97e1836c61682d0f4bb2f4defba9")
(setf (get world_canvas_msgs::EditAnnotationsData :datatype-) "world_canvas_msgs/EditAnnotationsData")
(setf (get world_canvas_msgs::EditAnnotationsData :request) world_canvas_msgs::EditAnnotationsDataRequest)
(setf (get world_canvas_msgs::EditAnnotationsData :response) world_canvas_msgs::EditAnnotationsDataResponse)

(defmethod world_canvas_msgs::EditAnnotationsDataRequest
  (:response () (instance world_canvas_msgs::EditAnnotationsDataResponse :init)))

(setf (get world_canvas_msgs::EditAnnotationsDataRequest :md5sum-) "457c97e1836c61682d0f4bb2f4defba9")
(setf (get world_canvas_msgs::EditAnnotationsDataRequest :datatype-) "world_canvas_msgs/EditAnnotationsDataRequest")
(setf (get world_canvas_msgs::EditAnnotationsDataRequest :definition-)
      "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation
# itself is passed just for information, to show extra information to the user or assist data edition,
# but will not be changed.
#  - On request, action involves whether the editor must show the given data or create it from scratch
#  - On response, action provides the user choice concerning what to do with old and new annotation data

uint8 NEW=0
uint8 EDIT=1

uint8 action

Annotation annotation
AnnotationData data

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
uint8 UPDATE=10
uint8 DELETE=12
uint8 CANCEL=13

uint8 action

AnnotationData data 

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

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")

(setf (get world_canvas_msgs::EditAnnotationsDataResponse :md5sum-) "457c97e1836c61682d0f4bb2f4defba9")
(setf (get world_canvas_msgs::EditAnnotationsDataResponse :datatype-) "world_canvas_msgs/EditAnnotationsDataResponse")
(setf (get world_canvas_msgs::EditAnnotationsDataResponse :definition-)
      "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation
# itself is passed just for information, to show extra information to the user or assist data edition,
# but will not be changed.
#  - On request, action involves whether the editor must show the given data or create it from scratch
#  - On response, action provides the user choice concerning what to do with old and new annotation data

uint8 NEW=0
uint8 EDIT=1

uint8 action

Annotation annotation
AnnotationData data

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
uint8 UPDATE=10
uint8 DELETE=12
uint8 CANCEL=13

uint8 action

AnnotationData data 

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

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")



(provide :world_canvas_msgs/EditAnnotationsData "457c97e1836c61682d0f4bb2f4defba9")


