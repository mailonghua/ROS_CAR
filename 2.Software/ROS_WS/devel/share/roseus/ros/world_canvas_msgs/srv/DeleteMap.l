;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::DeleteMap)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'DeleteMap (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::DELETEMAP")
  (make-package "WORLD_CANVAS_MSGS::DELETEMAP"))
(unless (find-package "WORLD_CANVAS_MSGS::DELETEMAPREQUEST")
  (make-package "WORLD_CANVAS_MSGS::DELETEMAPREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::DELETEMAPRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::DELETEMAPRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::DeleteMapRequest
  :super ros::object
  :slots (_map_id ))

(defmethod world_canvas_msgs::DeleteMapRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::DeleteMapResponse
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::DeleteMapResponse
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

(defclass world_canvas_msgs::DeleteMap
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::DeleteMap :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::DeleteMap :datatype-) "world_canvas_msgs/DeleteMap")
(setf (get world_canvas_msgs::DeleteMap :request) world_canvas_msgs::DeleteMapRequest)
(setf (get world_canvas_msgs::DeleteMap :response) world_canvas_msgs::DeleteMapResponse)

(defmethod world_canvas_msgs::DeleteMapRequest
  (:response () (instance world_canvas_msgs::DeleteMapResponse :init)))

(setf (get world_canvas_msgs::DeleteMapRequest :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::DeleteMapRequest :datatype-) "world_canvas_msgs/DeleteMapRequest")
(setf (get world_canvas_msgs::DeleteMapRequest :definition-)
      "# Service used to delete a given map

string map_id
---

")

(setf (get world_canvas_msgs::DeleteMapResponse :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::DeleteMapResponse :datatype-) "world_canvas_msgs/DeleteMapResponse")
(setf (get world_canvas_msgs::DeleteMapResponse :definition-)
      "# Service used to delete a given map

string map_id
---

")



(provide :world_canvas_msgs/DeleteMap "d742ddbd5e3e8937162044ae4b300275")


