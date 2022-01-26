;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::GetAnnotationsData)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'GetAnnotationsData (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATA")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATA"))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATAREQUEST")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATAREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATARESPONSE")
  (make-package "WORLD_CANVAS_MSGS::GETANNOTATIONSDATARESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(defclass world_canvas_msgs::GetAnnotationsDataRequest
  :super ros::object
  :slots (_annotation_ids ))

(defmethod world_canvas_msgs::GetAnnotationsDataRequest
  (:init
   (&key
    ((:annotation_ids __annotation_ids) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    )
   (send-super :init)
   (setq _annotation_ids __annotation_ids)
   self)
  (:annotation_ids
   (&rest __annotation_ids)
   (if (keywordp (car __annotation_ids))
       (send* _annotation_ids __annotation_ids)
     (progn
       (if __annotation_ids (setq _annotation_ids (car __annotation_ids)))
       _annotation_ids)))
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID[] _annotation_ids
    (apply #'+ (send-all _annotation_ids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID[] _annotation_ids
     (write-long (length _annotation_ids) s)
     (dolist (elem _annotation_ids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID[] _annotation_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _annotation_ids (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _annotation_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::GetAnnotationsDataResponse
  :super ros::object
  :slots (_result _message _data ))

(defmethod world_canvas_msgs::GetAnnotationsDataResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    ((:data __data) (let (r) (dotimes (i 0) (push (instance world_canvas_msgs::AnnotationData :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   (setq _data __data)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ;; world_canvas_msgs/AnnotationData[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; world_canvas_msgs/AnnotationData[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; world_canvas_msgs/AnnotationData[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance world_canvas_msgs::AnnotationData :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::GetAnnotationsData
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::GetAnnotationsData :md5sum-) "91d9a7f0b1315b44e207eeb7e9326135")
(setf (get world_canvas_msgs::GetAnnotationsData :datatype-) "world_canvas_msgs/GetAnnotationsData")
(setf (get world_canvas_msgs::GetAnnotationsData :request) world_canvas_msgs::GetAnnotationsDataRequest)
(setf (get world_canvas_msgs::GetAnnotationsData :response) world_canvas_msgs::GetAnnotationsDataResponse)

(defmethod world_canvas_msgs::GetAnnotationsDataRequest
  (:response () (instance world_canvas_msgs::GetAnnotationsDataResponse :init)))

(setf (get world_canvas_msgs::GetAnnotationsDataRequest :md5sum-) "91d9a7f0b1315b44e207eeb7e9326135")
(setf (get world_canvas_msgs::GetAnnotationsDataRequest :datatype-) "world_canvas_msgs/GetAnnotationsDataRequest")
(setf (get world_canvas_msgs::GetAnnotationsDataRequest :definition-)
      "# Request annotations' data for a list of annotation identifiers

uuid_msgs/UniqueID[] annotation_ids


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---
# What went wrong, if anything
bool result
string message

AnnotationData[] data 

================================================================================
MSG: world_canvas_msgs/AnnotationData
# Data for an element in a semantic map stored as a byte array generated by ros::serialization
# These objects are unique, although they can be referenced by one or more annotations
#  - id   : Object unique id; data_id field on Annotation messages point to this uuid
#  - type : Object type; duplicated from annotation for convenience on deserialization
#  - data : Serialized data
uuid_msgs/UniqueID id
string type
uint8[] data

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")

(setf (get world_canvas_msgs::GetAnnotationsDataResponse :md5sum-) "91d9a7f0b1315b44e207eeb7e9326135")
(setf (get world_canvas_msgs::GetAnnotationsDataResponse :datatype-) "world_canvas_msgs/GetAnnotationsDataResponse")
(setf (get world_canvas_msgs::GetAnnotationsDataResponse :definition-)
      "# Request annotations' data for a list of annotation identifiers

uuid_msgs/UniqueID[] annotation_ids


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---
# What went wrong, if anything
bool result
string message

AnnotationData[] data 

================================================================================
MSG: world_canvas_msgs/AnnotationData
# Data for an element in a semantic map stored as a byte array generated by ros::serialization
# These objects are unique, although they can be referenced by one or more annotations
#  - id   : Object unique id; data_id field on Annotation messages point to this uuid
#  - type : Object type; duplicated from annotation for convenience on deserialization
#  - data : Serialized data
uuid_msgs/UniqueID id
string type
uint8[] data

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")



(provide :world_canvas_msgs/GetAnnotationsData "91d9a7f0b1315b44e207eeb7e9326135")


