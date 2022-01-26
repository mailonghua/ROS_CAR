;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::ResetDatabase)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'ResetDatabase (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::RESETDATABASE")
  (make-package "WORLD_CANVAS_MSGS::RESETDATABASE"))
(unless (find-package "WORLD_CANVAS_MSGS::RESETDATABASEREQUEST")
  (make-package "WORLD_CANVAS_MSGS::RESETDATABASEREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::RESETDATABASERESPONSE")
  (make-package "WORLD_CANVAS_MSGS::RESETDATABASERESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::ResetDatabaseRequest
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::ResetDatabaseRequest
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

(defclass world_canvas_msgs::ResetDatabaseResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::ResetDatabaseResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::ResetDatabase
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::ResetDatabase :md5sum-) "b543fbd3518c791be28589b850702201")
(setf (get world_canvas_msgs::ResetDatabase :datatype-) "world_canvas_msgs/ResetDatabase")
(setf (get world_canvas_msgs::ResetDatabase :request) world_canvas_msgs::ResetDatabaseRequest)
(setf (get world_canvas_msgs::ResetDatabase :response) world_canvas_msgs::ResetDatabaseResponse)

(defmethod world_canvas_msgs::ResetDatabaseRequest
  (:response () (instance world_canvas_msgs::ResetDatabaseResponse :init)))

(setf (get world_canvas_msgs::ResetDatabaseRequest :md5sum-) "b543fbd3518c791be28589b850702201")
(setf (get world_canvas_msgs::ResetDatabaseRequest :datatype-) "world_canvas_msgs/ResetDatabaseRequest")
(setf (get world_canvas_msgs::ResetDatabaseRequest :definition-)
      "---
# What went wrong, if anything
bool result
string message

")

(setf (get world_canvas_msgs::ResetDatabaseResponse :md5sum-) "b543fbd3518c791be28589b850702201")
(setf (get world_canvas_msgs::ResetDatabaseResponse :datatype-) "world_canvas_msgs/ResetDatabaseResponse")
(setf (get world_canvas_msgs::ResetDatabaseResponse :definition-)
      "---
# What went wrong, if anything
bool result
string message

")



(provide :world_canvas_msgs/ResetDatabase "b543fbd3518c791be28589b850702201")


