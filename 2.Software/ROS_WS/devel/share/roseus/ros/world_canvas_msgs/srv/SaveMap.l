;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::SaveMap)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'SaveMap (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEMAP")
  (make-package "WORLD_CANVAS_MSGS::SAVEMAP"))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEMAPREQUEST")
  (make-package "WORLD_CANVAS_MSGS::SAVEMAPREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::SAVEMAPRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::SaveMapRequest
  :super ros::object
  :slots (_map_name ))

(defmethod world_canvas_msgs::SaveMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::SaveMapResponse
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::SaveMapResponse
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

(defclass world_canvas_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::SaveMap :md5sum-) "25e928a2d4ff388c294895b7af935978")
(setf (get world_canvas_msgs::SaveMap :datatype-) "world_canvas_msgs/SaveMap")
(setf (get world_canvas_msgs::SaveMap :request) world_canvas_msgs::SaveMapRequest)
(setf (get world_canvas_msgs::SaveMap :response) world_canvas_msgs::SaveMapResponse)

(defmethod world_canvas_msgs::SaveMapRequest
  (:response () (instance world_canvas_msgs::SaveMapResponse :init)))

(setf (get world_canvas_msgs::SaveMapRequest :md5sum-) "25e928a2d4ff388c294895b7af935978")
(setf (get world_canvas_msgs::SaveMapRequest :datatype-) "world_canvas_msgs/SaveMapRequest")
(setf (get world_canvas_msgs::SaveMapRequest :definition-)
      "# Service used to name the most recent saved map.

string map_name
---

")

(setf (get world_canvas_msgs::SaveMapResponse :md5sum-) "25e928a2d4ff388c294895b7af935978")
(setf (get world_canvas_msgs::SaveMapResponse :datatype-) "world_canvas_msgs/SaveMapResponse")
(setf (get world_canvas_msgs::SaveMapResponse :definition-)
      "# Service used to name the most recent saved map.

string map_name
---

")



(provide :world_canvas_msgs/SaveMap "25e928a2d4ff388c294895b7af935978")


