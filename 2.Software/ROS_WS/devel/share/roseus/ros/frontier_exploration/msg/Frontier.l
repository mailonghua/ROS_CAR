;; Auto-generated. Do not edit!


(when (boundp 'frontier_exploration::Frontier)
  (if (not (find-package "FRONTIER_EXPLORATION"))
    (make-package "FRONTIER_EXPLORATION"))
  (shadow 'Frontier (find-package "FRONTIER_EXPLORATION")))
(unless (find-package "FRONTIER_EXPLORATION::FRONTIER")
  (make-package "FRONTIER_EXPLORATION::FRONTIER"))

(in-package "ROS")
;;//! \htmlinclude Frontier.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass frontier_exploration::Frontier
  :super ros::object
  :slots (_size _min_distance _travel_point ))

(defmethod frontier_exploration::Frontier
  (:init
   (&key
    ((:size __size) 0)
    ((:min_distance __min_distance) 0.0)
    ((:travel_point __travel_point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _min_distance (float __min_distance))
   (setq _travel_point __travel_point)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:min_distance
   (&optional __min_distance)
   (if __min_distance (setq _min_distance __min_distance)) _min_distance)
  (:travel_point
   (&rest __travel_point)
   (if (keywordp (car __travel_point))
       (send* _travel_point __travel_point)
     (progn
       (if __travel_point (setq _travel_point (car __travel_point)))
       _travel_point)))
  (:serialization-length
   ()
   (+
    ;; uint32 _size
    4
    ;; float64 _min_distance
    8
    ;; geometry_msgs/Point _travel_point
    (send _travel_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _size
       (write-long _size s)
     ;; float64 _min_distance
       (sys::poke _min_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _travel_point
       (send _travel_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _min_distance
     (setq _min_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _travel_point
     (send _travel_point :deserialize buf ptr-) (incf ptr- (send _travel_point :serialization-length))
   ;;
   self)
  )

(setf (get frontier_exploration::Frontier :md5sum-) "8e57df42619e81a60a4a5920d716e4b4")
(setf (get frontier_exploration::Frontier :datatype-) "frontier_exploration/Frontier")
(setf (get frontier_exploration::Frontier :definition-)
      "uint32 size
float64 min_distance
geometry_msgs/Point travel_point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :frontier_exploration/Frontier "8e57df42619e81a60a4a5920d716e4b4")


