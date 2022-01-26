;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::YAMLImport)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'YAMLImport (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLIMPORT")
  (make-package "WORLD_CANVAS_MSGS::YAMLIMPORT"))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLIMPORTREQUEST")
  (make-package "WORLD_CANVAS_MSGS::YAMLIMPORTREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLIMPORTRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::YAMLIMPORTRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::YAMLImportRequest
  :super ros::object
  :slots (_filename ))

(defmethod world_canvas_msgs::YAMLImportRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_canvas_msgs::YAMLImportResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::YAMLImportResponse
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

(defclass world_canvas_msgs::YAMLImport
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::YAMLImport :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLImport :datatype-) "world_canvas_msgs/YAMLImport")
(setf (get world_canvas_msgs::YAMLImport :request) world_canvas_msgs::YAMLImportRequest)
(setf (get world_canvas_msgs::YAMLImport :response) world_canvas_msgs::YAMLImportResponse)

(defmethod world_canvas_msgs::YAMLImportRequest
  (:response () (instance world_canvas_msgs::YAMLImportResponse :init)))

(setf (get world_canvas_msgs::YAMLImportRequest :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLImportRequest :datatype-) "world_canvas_msgs/YAMLImportRequest")
(setf (get world_canvas_msgs::YAMLImportRequest :definition-)
      "string filename
---
# What went wrong, if anything
bool result
string message

")

(setf (get world_canvas_msgs::YAMLImportResponse :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLImportResponse :datatype-) "world_canvas_msgs/YAMLImportResponse")
(setf (get world_canvas_msgs::YAMLImportResponse :definition-)
      "string filename
---
# What went wrong, if anything
bool result
string message

")



(provide :world_canvas_msgs/YAMLImport "dea35f0126973fed4bc2a85823db7aa5")


