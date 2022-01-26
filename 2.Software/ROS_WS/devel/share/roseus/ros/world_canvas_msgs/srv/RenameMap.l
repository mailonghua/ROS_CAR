;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::RenameMap)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'RenameMap (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::RENAMEMAP")
  (make-package "WORLD_CANVAS_MSGS::RENAMEMAP"))
(unless (find-package "WORLD_CANVAS_MSGS::RENAMEMAPREQUEST")
  (make-package "WORLD_CANVAS_MSGS::RENAMEMAPREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::RENAMEMAPRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::RENAMEMAPRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::RenameMapRequest
  :super ros::object
  :slots (_map_id _new_name ))

(defmethod world_canvas_msgs::RenameMapRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:new_name __new_name) "")
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _new_name (string __new_name))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:new_name
   (&optional __new_name)
   (if __new_name (setq _new_name __new_name)) _new_name)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; string _new_name
    4 (length _new_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; string _new_name
       (write-long (length _new_name) s) (princ _new_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::RenameMapResponse
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::RenameMapResponse
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

(defclass world_canvas_msgs::RenameMap
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::RenameMap :md5sum-) "94f4d84fa2d3173899807933af417784")
(setf (get world_canvas_msgs::RenameMap :datatype-) "world_canvas_msgs/RenameMap")
(setf (get world_canvas_msgs::RenameMap :request) world_canvas_msgs::RenameMapRequest)
(setf (get world_canvas_msgs::RenameMap :response) world_canvas_msgs::RenameMapResponse)

(defmethod world_canvas_msgs::RenameMapRequest
  (:response () (instance world_canvas_msgs::RenameMapResponse :init)))

(setf (get world_canvas_msgs::RenameMapRequest :md5sum-) "94f4d84fa2d3173899807933af417784")
(setf (get world_canvas_msgs::RenameMapRequest :datatype-) "world_canvas_msgs/RenameMapRequest")
(setf (get world_canvas_msgs::RenameMapRequest :definition-)
      "# Service used to rename a given map.

string map_id
string new_name
---

")

(setf (get world_canvas_msgs::RenameMapResponse :md5sum-) "94f4d84fa2d3173899807933af417784")
(setf (get world_canvas_msgs::RenameMapResponse :datatype-) "world_canvas_msgs/RenameMapResponse")
(setf (get world_canvas_msgs::RenameMapResponse :definition-)
      "# Service used to rename a given map.

string map_id
string new_name
---

")



(provide :world_canvas_msgs/RenameMap "94f4d84fa2d3173899807933af417784")


