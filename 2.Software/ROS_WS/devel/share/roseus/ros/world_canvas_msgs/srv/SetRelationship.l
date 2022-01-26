;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::SetRelationship)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'SetRelationship (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIP")
  (make-package "WORLD_CANVAS_MSGS::SETRELATIONSHIP"))
(unless (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST")
  (make-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPRESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(intern "*ADD*" (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST"))
(shadow '*ADD* (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST"))
(defconstant world_canvas_msgs::SetRelationshipRequest::*ADD* 1)
(intern "*DEL*" (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST"))
(shadow '*DEL* (find-package "WORLD_CANVAS_MSGS::SETRELATIONSHIPREQUEST"))
(defconstant world_canvas_msgs::SetRelationshipRequest::*DEL* 2)
(defclass world_canvas_msgs::SetRelationshipRequest
  :super ros::object
  :slots (_id _relationship _action ))

(defmethod world_canvas_msgs::SetRelationshipRequest
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:relationship __relationship) (instance uuid_msgs::UniqueID :init))
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _relationship __relationship)
   (setq _action (round __action))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:relationship
   (&rest __relationship)
   (if (keywordp (car __relationship))
       (send* _relationship __relationship)
     (progn
       (if __relationship (setq _relationship (car __relationship)))
       _relationship)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; uuid_msgs/UniqueID _relationship
    (send _relationship :serialization-length)
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; uuid_msgs/UniqueID _relationship
       (send _relationship :serialize s)
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uuid_msgs/UniqueID _relationship
     (send _relationship :deserialize buf ptr-) (incf ptr- (send _relationship :serialization-length))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_canvas_msgs::SetRelationshipResponse
  :super ros::object
  :slots (_result _message ))

(defmethod world_canvas_msgs::SetRelationshipResponse
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

(defclass world_canvas_msgs::SetRelationship
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::SetRelationship :md5sum-) "c1d8b7af22a1ce2dc6c177d3ab941e79")
(setf (get world_canvas_msgs::SetRelationship :datatype-) "world_canvas_msgs/SetRelationship")
(setf (get world_canvas_msgs::SetRelationship :request) world_canvas_msgs::SetRelationshipRequest)
(setf (get world_canvas_msgs::SetRelationship :response) world_canvas_msgs::SetRelationshipResponse)

(defmethod world_canvas_msgs::SetRelationshipRequest
  (:response () (instance world_canvas_msgs::SetRelationshipResponse :init)))

(setf (get world_canvas_msgs::SetRelationshipRequest :md5sum-) "c1d8b7af22a1ce2dc6c177d3ab941e79")
(setf (get world_canvas_msgs::SetRelationshipRequest :datatype-) "world_canvas_msgs/SetRelationshipRequest")
(setf (get world_canvas_msgs::SetRelationshipRequest :definition-)
      "# Add/remove a specific relationship to the specified annotation
uint8 ADD = 1
uint8 DEL = 2

uuid_msgs/UniqueID id
uuid_msgs/UniqueID relationship
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

(setf (get world_canvas_msgs::SetRelationshipResponse :md5sum-) "c1d8b7af22a1ce2dc6c177d3ab941e79")
(setf (get world_canvas_msgs::SetRelationshipResponse :datatype-) "world_canvas_msgs/SetRelationshipResponse")
(setf (get world_canvas_msgs::SetRelationshipResponse :definition-)
      "# Add/remove a specific relationship to the specified annotation
uint8 ADD = 1
uint8 DEL = 2

uuid_msgs/UniqueID id
uuid_msgs/UniqueID relationship
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



(provide :world_canvas_msgs/SetRelationship "c1d8b7af22a1ce2dc6c177d3ab941e79")


