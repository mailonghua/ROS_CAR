;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::GetAnnotations)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'GetAnnotations (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONS")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONS"))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONSREQUEST")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONSREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONSRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONSRESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(defclass world_canvas_msgs::GetAnnotationsRequest
  :super ros::object
  :slots (_world _ids _names _types _keywords _relationships ))

(defmethod world_canvas_msgs::GetAnnotationsRequest
  (:init
   (&key
    ((:world __world) "")
    ((:ids __ids) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:types __types) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:keywords __keywords) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:relationships __relationships) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    )
   (send-super :init)
   (setq _world (string __world))
   (setq _ids __ids)
   (setq _names __names)
   (setq _types __types)
   (setq _keywords __keywords)
   (setq _relationships __relationships)
   self)
  (:world
   (&optional __world)
   (if __world (setq _world __world)) _world)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:keywords
   (&optional __keywords)
   (if __keywords (setq _keywords __keywords)) _keywords)
  (:relationships
   (&rest __relationships)
   (if (keywordp (car __relationships))
       (send* _relationships __relationships)
     (progn
       (if __relationships (setq _relationships (car __relationships)))
       _relationships)))
  (:serialization-length
   ()
   (+
    ;; string _world
    4 (length _world)
    ;; uuid_msgs/UniqueID[] _ids
    (apply #'+ (send-all _ids :serialization-length)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; string[] _types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _types)) 4
    ;; string[] _keywords
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _keywords)) 4
    ;; uuid_msgs/UniqueID[] _relationships
    (apply #'+ (send-all _relationships :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _world
       (write-long (length _world) s) (princ _world s)
     ;; uuid_msgs/UniqueID[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (send elem :serialize s)
       )
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _keywords
     (write-long (length _keywords) s)
     (dolist (elem _keywords)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uuid_msgs/UniqueID[] _relationships
     (write-long (length _relationships) s)
     (dolist (elem _relationships)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _world
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _world (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uuid_msgs/UniqueID[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _keywords
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keywords (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _keywords i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uuid_msgs/UniqueID[] _relationships
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relationships (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _relationships)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::GetAnnotationsResponse
  :super ros::object
  :slots (_result _message _annotations ))

(defmethod world_canvas_msgs::GetAnnotationsResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    ((:annotations __annotations) (let (r) (dotimes (i 0) (push (instance world_canvas_msgs::Annotation :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   (setq _annotations __annotations)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:annotations
   (&rest __annotations)
   (if (keywordp (car __annotations))
       (send* _annotations __annotations)
     (progn
       (if __annotations (setq _annotations (car __annotations)))
       _annotations)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ;; world_canvas_msgs/Annotation[] _annotations
    (apply #'+ (send-all _annotations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; world_canvas_msgs/Annotation[] _annotations
     (write-long (length _annotations) s)
     (dolist (elem _annotations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; world_canvas_msgs/Annotation[] _annotations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _annotations (let (r) (dotimes (i n) (push (instance world_canvas_msgs::Annotation :init) r)) r))
     (dolist (elem- _annotations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::GetAnnotations
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::GetAnnotations :md5sum-) "359022e7802b23e8a76ae9f41f8321d4")
(setf (get world_canvas_msgs::GetAnnotations :datatype-) "world_canvas_msgs/GetAnnotations")
(setf (get world_canvas_msgs::GetAnnotations :request) world_canvas_msgs::GetAnnotationsRequest)
(setf (get world_canvas_msgs::GetAnnotations :response) world_canvas_msgs::GetAnnotationsResponse)

(defmethod world_canvas_msgs::GetAnnotationsRequest
  (:response () (instance world_canvas_msgs::GetAnnotationsResponse :init)))

(setf (get world_canvas_msgs::GetAnnotationsRequest :md5sum-) "359022e7802b23e8a76ae9f41f8321d4")
(setf (get world_canvas_msgs::GetAnnotationsRequest :datatype-) "world_canvas_msgs/GetAnnotationsRequest")
(setf (get world_canvas_msgs::GetAnnotationsRequest :definition-)
      "# Various combinations of these filter criteria trigger various results
# The only one mandatory is world_name; empty arrays are ignored
string world
uuid_msgs/UniqueID[] ids  # Retrieved annotation uuid is within this list
string[] names            # Retrieved annotation name is within this list
string[] types            # Retrieved annotation type is within this list
string[] keywords         # Retrieved annotation has at least one of these keywords
uuid_msgs/UniqueID[] relationships # Retrieve annotations related to those on this list


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---

# What went wrong, if anything
bool result
string message

Annotation[] annotations


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
")

(setf (get world_canvas_msgs::GetAnnotationsResponse :md5sum-) "359022e7802b23e8a76ae9f41f8321d4")
(setf (get world_canvas_msgs::GetAnnotationsResponse :datatype-) "world_canvas_msgs/GetAnnotationsResponse")
(setf (get world_canvas_msgs::GetAnnotationsResponse :definition-)
      "# Various combinations of these filter criteria trigger various results
# The only one mandatory is world_name; empty arrays are ignored
string world
uuid_msgs/UniqueID[] ids  # Retrieved annotation uuid is within this list
string[] names            # Retrieved annotation name is within this list
string[] types            # Retrieved annotation type is within this list
string[] keywords         # Retrieved annotation has at least one of these keywords
uuid_msgs/UniqueID[] relationships # Retrieve annotations related to those on this list


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---

# What went wrong, if anything
bool result
string message

Annotation[] annotations


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
")



(provide :world_canvas_msgs/GetAnnotations "359022e7802b23e8a76ae9f41f8321d4")


