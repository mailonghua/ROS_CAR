;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetLaser)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetLaser (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETLASER")
  (make-package "ASTRA_CAMERA::SETLASER"))
(unless (find-package "ASTRA_CAMERA::SETLASERREQUEST")
  (make-package "ASTRA_CAMERA::SETLASERREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETLASERRESPONSE")
  (make-package "ASTRA_CAMERA::SETLASERRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetLaserRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetLaserRequest
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

(defclass astra_camera::SetLaserResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetLaserResponse
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

(defclass astra_camera::SetLaser
  :super ros::object
  :slots ())

(setf (get astra_camera::SetLaser :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLaser :datatype-) "astra_camera/SetLaser")
(setf (get astra_camera::SetLaser :request) astra_camera::SetLaserRequest)
(setf (get astra_camera::SetLaser :response) astra_camera::SetLaserResponse)

(defmethod astra_camera::SetLaserRequest
  (:response () (instance astra_camera::SetLaserResponse :init)))

(setf (get astra_camera::SetLaserRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLaserRequest :datatype-) "astra_camera/SetLaserRequest")
(setf (get astra_camera::SetLaserRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetLaserResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLaserResponse :datatype-) "astra_camera/SetLaserResponse")
(setf (get astra_camera::SetLaserResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetLaser "8c1211af706069c994c06e00eb59ac9e")


