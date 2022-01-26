;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::PubAnnotationsData)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'PubAnnotationsData (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATA")
  (make-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATA"))
(unless (find-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATAREQUEST")
  (make-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATAREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATARESPONSE")
  (make-package "WORLD_CANVAS_MSGS::PUBANNOTATIONSDATARESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(defclass world_canvas_msgs::PubAnnotationsDataRequest
  :super ros::object
  :slots (_annotation_ids _topic_name _topic_type _pub_as_list ))

(defmethod world_canvas_msgs::PubAnnotationsDataRequest
  (:init
   (&key
    ((:annotation_ids __annotation_ids) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    ((:topic_name __topic_name) "")
    ((:topic_type __topic_type) "")
    ((:pub_as_list __pub_as_list) nil)
    )
   (send-super :init)
   (setq _annotation_ids __annotation_ids)
   (setq _topic_name (string __topic_name))
   (setq _topic_type (string __topic_type))
   (setq _pub_as_list __pub_as_list)
   self)
  (:annotation_ids
   (&rest __annotation_ids)
   (if (keywordp (car __annotation_ids))
       (send* _annotation_ids __annotation_ids)
     (progn
       (if __annotation_ids (setq _annotation_ids (car __annotation_ids)))
       _annotation_ids)))
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:topic_type
   (&optional __topic_type)
   (if __topic_type (setq _topic_type __topic_type)) _topic_type)
  (:pub_as_list
   (&optional __pub_as_list)
   (if __pub_as_list (setq _pub_as_list __pub_as_list)) _pub_as_list)
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID[] _annotation_ids
    (apply #'+ (send-all _annotation_ids :serialization-length)) 4
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _topic_type
    4 (length _topic_type)
    ;; bool _pub_as_list
    1
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
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _topic_type
       (write-long (length _topic_type) s) (princ _topic_type s)
     ;; bool _pub_as_list
       (if _pub_as_list (write-byte -1 s) (write-byte 0 s))
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
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _topic_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _pub_as_list
     (setq _pub_as_list (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_canvas_msgs::PubAnnotationsDataResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::PubAnnotationsDataResponse
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

(defclass world_canvas_msgs::PubAnnotationsData
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::PubAnnotationsData :md5sum-) "efc54bf1b4a6309b22d598d89ee85d1f")
(setf (get world_canvas_msgs::PubAnnotationsData :datatype-) "world_canvas_msgs/PubAnnotationsData")
(setf (get world_canvas_msgs::PubAnnotationsData :request) world_canvas_msgs::PubAnnotationsDataRequest)
(setf (get world_canvas_msgs::PubAnnotationsData :response) world_canvas_msgs::PubAnnotationsDataResponse)

(defmethod world_canvas_msgs::PubAnnotationsDataRequest
  (:response () (instance world_canvas_msgs::PubAnnotationsDataResponse :init)))

(setf (get world_canvas_msgs::PubAnnotationsDataRequest :md5sum-) "efc54bf1b4a6309b22d598d89ee85d1f")
(setf (get world_canvas_msgs::PubAnnotationsDataRequest :datatype-) "world_canvas_msgs/PubAnnotationsDataRequest")
(setf (get world_canvas_msgs::PubAnnotationsDataRequest :definition-)
      "# Request server to publish annotations' data for a list of annotation identifiers
# If pub_as_list is true, annotations will be packed in a list before publishing,
# so topic_type must be an array of the requested annotations. However, if is false,
# topic_type is just ignored and the published topic type is obtained from one of
# the annotations in the list
# NOTE: in both cases, all annotations must be of the same type

uuid_msgs/UniqueID[] annotation_ids
string topic_name
string topic_type
bool pub_as_list


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

")

(setf (get world_canvas_msgs::PubAnnotationsDataResponse :md5sum-) "efc54bf1b4a6309b22d598d89ee85d1f")
(setf (get world_canvas_msgs::PubAnnotationsDataResponse :datatype-) "world_canvas_msgs/PubAnnotationsDataResponse")
(setf (get world_canvas_msgs::PubAnnotationsDataResponse :definition-)
      "# Request server to publish annotations' data for a list of annotation identifiers
# If pub_as_list is true, annotations will be packed in a list before publishing,
# so topic_type must be an array of the requested annotations. However, if is false,
# topic_type is just ignored and the published topic type is obtained from one of
# the annotations in the list
# NOTE: in both cases, all annotations must be of the same type

uuid_msgs/UniqueID[] annotation_ids
string topic_name
string topic_type
bool pub_as_list


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

")



(provide :world_canvas_msgs/PubAnnotationsData "efc54bf1b4a6309b22d598d89ee85d1f")


