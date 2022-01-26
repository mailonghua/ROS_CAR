;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetIRFlood)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetIRFlood (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETIRFLOOD")
  (make-package "ASTRA_CAMERA::SETIRFLOOD"))
(unless (find-package "ASTRA_CAMERA::SETIRFLOODREQUEST")
  (make-package "ASTRA_CAMERA::SETIRFLOODREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETIRFLOODRESPONSE")
  (make-package "ASTRA_CAMERA::SETIRFLOODRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetIRFloodRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetIRFloodRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astra_camera::SetIRFloodResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetIRFloodResponse
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

(defclass astra_camera::SetIRFlood
  :super ros::object
  :slots ())

(setf (get astra_camera::SetIRFlood :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetIRFlood :datatype-) "astra_camera/SetIRFlood")
(setf (get astra_camera::SetIRFlood :request) astra_camera::SetIRFloodRequest)
(setf (get astra_camera::SetIRFlood :response) astra_camera::SetIRFloodResponse)

(defmethod astra_camera::SetIRFloodRequest
  (:response () (instance astra_camera::SetIRFloodResponse :init)))

(setf (get astra_camera::SetIRFloodRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetIRFloodRequest :datatype-) "astra_camera/SetIRFloodRequest")
(setf (get astra_camera::SetIRFloodRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetIRFloodResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetIRFloodResponse :datatype-) "astra_camera/SetIRFloodResponse")
(setf (get astra_camera::SetIRFloodResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetIRFlood "8c1211af706069c994c06e00eb59ac9e")


