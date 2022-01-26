;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::ListMaps)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'ListMaps (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::LISTMAPS")
  (make-package "WORLD_CANVAS_MSGS::LISTMAPS"))
(unless (find-package "WORLD_CANVAS_MSGS::LISTMAPSREQUEST")
  (make-package "WORLD_CANVAS_MSGS::LISTMAPSREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::LISTMAPSRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::LISTMAPSRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::ListMapsRequest
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::ListMapsRequest
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

(defclass world_canvas_msgs::ListMapsResponse
  :super ros::object
  :slots (_map_list ))

(defmethod world_canvas_msgs::ListMapsResponse
  (:init
   (&key
    ((:map_list __map_list) (let (r) (dotimes (i 0) (push (instance world_canvas_msgs::MapListEntry :init) r)) r))
    )
   (send-super :init)
   (setq _map_list __map_list)
   self)
  (:map_list
   (&rest __map_list)
   (if (keywordp (car __map_list))
       (send* _map_list __map_list)
     (progn
       (if __map_list (setq _map_list (car __map_list)))
       _map_list)))
  (:serialization-length
   ()
   (+
    ;; world_canvas_msgs/MapListEntry[] _map_list
    (apply #'+ (send-all _map_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; world_canvas_msgs/MapListEntry[] _map_list
     (write-long (length _map_list) s)
     (dolist (elem _map_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; world_canvas_msgs/MapListEntry[] _map_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_list (let (r) (dotimes (i n) (push (instance world_canvas_msgs::MapListEntry :init) r)) r))
     (dolist (elem- _map_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::ListMaps
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::ListMaps :md5sum-) "ca5a33dd106a2c24cfd54c927d214957")
(setf (get world_canvas_msgs::ListMaps :datatype-) "world_canvas_msgs/ListMaps")
(setf (get world_canvas_msgs::ListMaps :request) world_canvas_msgs::ListMapsRequest)
(setf (get world_canvas_msgs::ListMaps :response) world_canvas_msgs::ListMapsResponse)

(defmethod world_canvas_msgs::ListMapsRequest
  (:response () (instance world_canvas_msgs::ListMapsResponse :init)))

(setf (get world_canvas_msgs::ListMapsRequest :md5sum-) "ca5a33dd106a2c24cfd54c927d214957")
(setf (get world_canvas_msgs::ListMapsRequest :datatype-) "world_canvas_msgs/ListMapsRequest")
(setf (get world_canvas_msgs::ListMapsRequest :definition-)
      "# Service used to list the most recent map from every map-making session.

# No arguments at this time.
---
MapListEntry[] map_list


================================================================================
MSG: world_canvas_msgs/MapListEntry
# One entry in a list of maps.

# Naming a map is optional.
string name

# Maps made by the make-a-map app are given a session ID, which is the
# time when the map-making session was started, expressed as seconds
# since the epoch and converted to a string.
string session_id

# Creation time of this map, in seconds since the epoch.
int64 date

# Unique ID of this map.
string map_id
")

(setf (get world_canvas_msgs::ListMapsResponse :md5sum-) "ca5a33dd106a2c24cfd54c927d214957")
(setf (get world_canvas_msgs::ListMapsResponse :datatype-) "world_canvas_msgs/ListMapsResponse")
(setf (get world_canvas_msgs::ListMapsResponse :definition-)
      "# Service used to list the most recent map from every map-making session.

# No arguments at this time.
---
MapListEntry[] map_list


================================================================================
MSG: world_canvas_msgs/MapListEntry
# One entry in a list of maps.

# Naming a map is optional.
string name

# Maps made by the make-a-map app are given a session ID, which is the
# time when the map-making session was started, expressed as seconds
# since the epoch and converted to a string.
string session_id

# Creation time of this map, in seconds since the epoch.
int64 date

# Unique ID of this map.
string map_id
")



(provide :world_canvas_msgs/ListMaps "ca5a33dd106a2c24cfd54c927d214957")


