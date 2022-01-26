;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::YAMLExport)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'YAMLExport (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLEXPORT")
  (make-package "WORLD_CANVAS_MSGS::YAMLEXPORT"))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLEXPORTREQUEST")
  (make-package "WORLD_CANVAS_MSGS::YAMLEXPORTREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::YAMLEXPORTRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::YAMLEXPORTRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::YAMLExportRequest
  :super ros::object
  :slots (_filename ))

(defmethod world_canvas_msgs::YAMLExportRequest
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

(defclass world_canvas_msgs::YAMLExportResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::YAMLExportResponse
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

(defclass world_canvas_msgs::YAMLExport
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::YAMLExport :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLExport :datatype-) "world_canvas_msgs/YAMLExport")
(setf (get world_canvas_msgs::YAMLExport :request) world_canvas_msgs::YAMLExportRequest)
(setf (get world_canvas_msgs::YAMLExport :response) world_canvas_msgs::YAMLExportResponse)

(defmethod world_canvas_msgs::YAMLExportRequest
  (:response () (instance world_canvas_msgs::YAMLExportResponse :init)))

(setf (get world_canvas_msgs::YAMLExportRequest :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLExportRequest :datatype-) "world_canvas_msgs/YAMLExportRequest")
(setf (get world_canvas_msgs::YAMLExportRequest :definition-)
      "string filename
---
# What went wrong, if anything
bool result
string message

")

(setf (get world_canvas_msgs::YAMLExportResponse :md5sum-) "dea35f0126973fed4bc2a85823db7aa5")
(setf (get world_canvas_msgs::YAMLExportResponse :datatype-) "world_canvas_msgs/YAMLExportResponse")
(setf (get world_canvas_msgs::YAMLExportResponse :definition-)
      "string filename
---
# What went wrong, if anything
bool result
string message

")



(provide :world_canvas_msgs/YAMLExport "dea35f0126973fed4bc2a85823db7aa5")


