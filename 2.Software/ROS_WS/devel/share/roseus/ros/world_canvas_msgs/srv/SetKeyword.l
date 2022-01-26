;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::SetKeyword)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'SetKeyword (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::SETKEYWORD")
  (make-package "WORLD_CANVAS_MSGS::SETKEYWORD"))
(unless (find-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST")
  (make-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::SETKEYWORDRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::SETKEYWORDRESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(intern "*ADD*" (find-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST"))
(shadow '*ADD* (find-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST"))
(defconstant world_canvas_msgs::SetKeywordRequest::*ADD* 1)
(intern "*DEL*" (find-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST"))
(shadow '*DEL* (find-package "WORLD_CANVAS_MSGS::SETKEYWORDREQUEST"))
(defconstant world_canvas_msgs::SetKeywordRequest::*DEL* 2)
(defclass world_canvas_msgs::SetKeywordRequest
  :super ros::object
  :slots (_id _keyword _action ))

(defmethod world_canvas_msgs::SetKeywordRequest
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:keyword __keyword) "")
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _keyword (string __keyword))
   (setq _action (round __action))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:keyword
   (&optional __keyword)
   (if __keyword (setq _keyword __keyword)) _keyword)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; string _keyword
    4 (length _keyword)
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; string _keyword
       (write-long (length _keyword) s) (princ _keyword s)
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _keyword
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _keyword (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_canvas_msgs::SetKeywordResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::SetKeywordResponse
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

(defclass world_canvas_msgs::SetKeyword
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::SetKeyword :md5sum-) "65f5117750acdab10204175816f3c48a")
(setf (get world_canvas_msgs::SetKeyword :datatype-) "world_canvas_msgs/SetKeyword")
(setf (get world_canvas_msgs::SetKeyword :request) world_canvas_msgs::SetKeywordRequest)
(setf (get world_canvas_msgs::SetKeyword :response) world_canvas_msgs::SetKeywordResponse)

(defmethod world_canvas_msgs::SetKeywordRequest
  (:response () (instance world_canvas_msgs::SetKeywordResponse :init)))

(setf (get world_canvas_msgs::SetKeywordRequest :md5sum-) "65f5117750acdab10204175816f3c48a")
(setf (get world_canvas_msgs::SetKeywordRequest :datatype-) "world_canvas_msgs/SetKeywordRequest")
(setf (get world_canvas_msgs::SetKeywordRequest :definition-)
      "# Add/remove a specific keyword to the specified annotation
uint8 ADD = 1
uint8 DEL = 2

uuid_msgs/UniqueID id
string keyword
uint8 action

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

(setf (get world_canvas_msgs::SetKeywordResponse :md5sum-) "65f5117750acdab10204175816f3c48a")
(setf (get world_canvas_msgs::SetKeywordResponse :datatype-) "world_canvas_msgs/SetKeywordResponse")
(setf (get world_canvas_msgs::SetKeywordResponse :definition-)
      "# Add/remove a specific keyword to the specified annotation
uint8 ADD = 1
uint8 DEL = 2

uuid_msgs/UniqueID id
string keyword
uint8 action

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



(provide :world_canvas_msgs/SetKeyword "65f5117750acdab10204175816f3c48a")


