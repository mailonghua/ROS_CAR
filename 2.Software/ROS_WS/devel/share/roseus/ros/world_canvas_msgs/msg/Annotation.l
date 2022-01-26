;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::Annotation)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'Annotation (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::ANNOTATION")
  (make-package "WORLD_CANVAS_MSGS::ANNOTATION"))

(in-package "ROS")
;;//! \htmlinclude Annotation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass world_canvas_msgs::Annotation
  :super ros::object
  :slots (_timestamp _id _data_id _world _name _type _shape _color _size _pose _keywords _relationships ))

(defmethod world_canvas_msgs::Annotation
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:data_id __data_id) (instance uuid_msgs::UniqueID :init))
    ((:world __world) "")
    ((:name __name) "")
    ((:type __type) "")
    ((:shape __shape) 0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    ((:keywords __keywords) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:relationships __relationships) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _id __id)
   (setq _data_id __data_id)
   (setq _world (string __world))
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _shape (round __shape))
   (setq _color __color)
   (setq _size __size)
   (setq _pose __pose)
   (setq _keywords __keywords)
   (setq _relationships __relationships)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:data_id
   (&rest __data_id)
   (if (keywordp (car __data_id))
       (send* _data_id __data_id)
     (progn
       (if __data_id (setq _data_id (car __data_id)))
       _data_id)))
  (:world
   (&optional __world)
   (if __world (setq _world __world)) _world)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
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
    ;; time _timestamp
    8
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; uuid_msgs/UniqueID _data_id
    (send _data_id :serialization-length)
    ;; string _world
    4 (length _world)
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; int32 _shape
    4
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ;; geometry_msgs/PoseWithCovarianceStamped _pose
    (send _pose :serialization-length)
    ;; string[] _keywords
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _keywords)) 4
    ;; uuid_msgs/UniqueID[] _relationships
    (apply #'+ (send-all _relationships :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; uuid_msgs/UniqueID _data_id
       (send _data_id :serialize s)
     ;; string _world
       (write-long (length _world) s) (princ _world s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _shape
       (write-long _shape s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;; geometry_msgs/PoseWithCovarianceStamped _pose
       (send _pose :serialize s)
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
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uuid_msgs/UniqueID _data_id
     (send _data_id :deserialize buf ptr-) (incf ptr- (send _data_id :serialization-length))
   ;; string _world
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _world (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; geometry_msgs/PoseWithCovarianceStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
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

(setf (get world_canvas_msgs::Annotation :md5sum-) "ad3b363d73f197c0fc0f70645a6b2598")
(setf (get world_canvas_msgs::Annotation :datatype-) "world_canvas_msgs/Annotation")
(setf (get world_canvas_msgs::Annotation :definition-)
      "# Annotation: a generic descriptor for an element (object) in a semantic map
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



(provide :world_canvas_msgs/Annotation "ad3b363d73f197c0fc0f70645a6b2598")


