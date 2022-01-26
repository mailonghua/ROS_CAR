;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::PublishMap)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'PublishMap (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::PUBLISHMAP")
  (make-package "WORLD_CANVAS_MSGS::PUBLISHMAP"))
(unless (find-package "WORLD_CANVAS_MSGS::PUBLISHMAPREQUEST")
  (make-package "WORLD_CANVAS_MSGS::PUBLISHMAPREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::PUBLISHMAPRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::PUBLISHMAPRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::PublishMapRequest
  :super ros::object
  :slots (_map_id ))

(defmethod world_canvas_msgs::PublishMapRequest
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

(defclass world_canvas_msgs::PublishMapResponse
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::PublishMapResponse
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

(defclass world_canvas_msgs::PublishMap
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::PublishMap :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::PublishMap :datatype-) "world_canvas_msgs/PublishMap")
(setf (get world_canvas_msgs::PublishMap :request) world_canvas_msgs::PublishMapRequest)
(setf (get world_canvas_msgs::PublishMap :response) world_canvas_msgs::PublishMapResponse)

(defmethod world_canvas_msgs::PublishMapRequest
  (:response () (instance world_canvas_msgs::PublishMapResponse :init)))

(setf (get world_canvas_msgs::PublishMapRequest :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::PublishMapRequest :datatype-) "world_canvas_msgs/PublishMapRequest")
(setf (get world_canvas_msgs::PublishMapRequest :definition-)
      "# Service used to publish a given map from the database to the /map topic.

string map_id
---

")

(setf (get world_canvas_msgs::PublishMapResponse :md5sum-) "d742ddbd5e3e8937162044ae4b300275")
(setf (get world_canvas_msgs::PublishMapResponse :datatype-) "world_canvas_msgs/PublishMapResponse")
(setf (get world_canvas_msgs::PublishMapResponse :definition-)
      "# Service used to publish a given map from the database to the /map topic.

string map_id
---

")



(provide :world_canvas_msgs/PublishMap "d742ddbd5e3e8937162044ae4b300275")


