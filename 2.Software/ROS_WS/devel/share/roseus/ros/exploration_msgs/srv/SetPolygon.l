;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::SetPolygon)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'SetPolygon (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::SETPOLYGON")
  (make-package "EXPLORATION_MSGS::SETPOLYGON"))
(unless (find-package "EXPLORATION_MSGS::SETPOLYGONREQUEST")
  (make-package "EXPLORATION_MSGS::SETPOLYGONREQUEST"))
(unless (find-package "EXPLORATION_MSGS::SETPOLYGONRESPONSE")
  (make-package "EXPLORATION_MSGS::SETPOLYGONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass exploration_msgs::SetPolygonRequest
  :super ros::object
  :slots (_polygon ))

(defmethod exploration_msgs::SetPolygonRequest
  (:init
   (&key
    ((:polygon __polygon) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _polygon __polygon)
   self)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PolygonStamped _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PolygonStamped _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PolygonStamped _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(defclass exploration_msgs::SetPolygonResponse
  :super ros::object
  :slots ())

(defmethod exploration_msgs::SetPolygonResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass exploration_msgs::SetPolygon
  :super ros::object
  :slots ())

(setf (get exploration_msgs::SetPolygon :md5sum-) "e257093c51f646bb3fd81ee37f162324")
(setf (get exploration_msgs::SetPolygon :datatype-) "exploration_msgs/SetPolygon")
(setf (get exploration_msgs::SetPolygon :request) exploration_msgs::SetPolygonRequest)
(setf (get exploration_msgs::SetPolygon :response) exploration_msgs::SetPolygonResponse)

(defmethod exploration_msgs::SetPolygonRequest
  (:response () (instance exploration_msgs::SetPolygonResponse :init)))

(setf (get exploration_msgs::SetPolygonRequest :md5sum-) "e257093c51f646bb3fd81ee37f162324")
(setf (get exploration_msgs::SetPolygonRequest :datatype-) "exploration_msgs/SetPolygonRequest")
(setf (get exploration_msgs::SetPolygonRequest :definition-)
      "geometry_msgs/PolygonStamped polygon

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---

")

(setf (get exploration_msgs::SetPolygonResponse :md5sum-) "e257093c51f646bb3fd81ee37f162324")
(setf (get exploration_msgs::SetPolygonResponse :datatype-) "exploration_msgs/SetPolygonResponse")
(setf (get exploration_msgs::SetPolygonResponse :definition-)
      "geometry_msgs/PolygonStamped polygon

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---

")



(provide :exploration_msgs/SetPolygon "e257093c51f646bb3fd81ee37f162324")


