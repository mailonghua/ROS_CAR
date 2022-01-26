;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetIRExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetIRExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETIREXPOSURE")
  (make-package "ASTRA_CAMERA::SETIREXPOSURE"))
(unless (find-package "ASTRA_CAMERA::SETIREXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::SETIREXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETIREXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::SETIREXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetIRExposureRequest
  :super ros::object
  :slots (_exposure ))

(defmethod astra_camera::SetIRExposureRequest
  (:init
   (&key
    ((:exposure __exposure) 0)
    )
   (send-super :init)
   (setq _exposure (round __exposure))
   self)
  (:exposure
   (&optional __exposure)
   (if __exposure (setq _exposure __exposure)) _exposure)
  (:serialization-length
   ()
   (+
    ;; int32 _exposure
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _exposure
       (write-long _exposure s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _exposure
     (setq _exposure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass astra_camera::SetIRExposureResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetIRExposureResponse
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

(defclass astra_camera::SetIRExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::SetIRExposure :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetIRExposure :datatype-) "astra_camera/SetIRExposure")
(setf (get astra_camera::SetIRExposure :request) astra_camera::SetIRExposureRequest)
(setf (get astra_camera::SetIRExposure :response) astra_camera::SetIRExposureResponse)

(defmethod astra_camera::SetIRExposureRequest
  (:response () (instance astra_camera::SetIRExposureResponse :init)))

(setf (get astra_camera::SetIRExposureRequest :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetIRExposureRequest :datatype-) "astra_camera/SetIRExposureRequest")
(setf (get astra_camera::SetIRExposureRequest :definition-)
      "int32 exposure
---
")

(setf (get astra_camera::SetIRExposureResponse :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetIRExposureResponse :datatype-) "astra_camera/SetIRExposureResponse")
(setf (get astra_camera::SetIRExposureResponse :definition-)
      "int32 exposure
---
")



(provide :astra_camera/SetIRExposure "0535ed1a1204bb999d0e7bea8f6c3c81")


