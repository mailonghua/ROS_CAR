;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetUVCExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetUVCExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETUVCEXPOSURE")
  (make-package "ASTRA_CAMERA::SETUVCEXPOSURE"))
(unless (find-package "ASTRA_CAMERA::SETUVCEXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::SETUVCEXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETUVCEXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::SETUVCEXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetUVCExposureRequest
  :super ros::object
  :slots (_exposure ))

(defmethod astra_camera::SetUVCExposureRequest
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

(defclass astra_camera::SetUVCExposureResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetUVCExposureResponse
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

(defclass astra_camera::SetUVCExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::SetUVCExposure :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetUVCExposure :datatype-) "astra_camera/SetUVCExposure")
(setf (get astra_camera::SetUVCExposure :request) astra_camera::SetUVCExposureRequest)
(setf (get astra_camera::SetUVCExposure :response) astra_camera::SetUVCExposureResponse)

(defmethod astra_camera::SetUVCExposureRequest
  (:response () (instance astra_camera::SetUVCExposureResponse :init)))

(setf (get astra_camera::SetUVCExposureRequest :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetUVCExposureRequest :datatype-) "astra_camera/SetUVCExposureRequest")
(setf (get astra_camera::SetUVCExposureRequest :definition-)
      "int32 exposure
---
")

(setf (get astra_camera::SetUVCExposureResponse :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::SetUVCExposureResponse :datatype-) "astra_camera/SetUVCExposureResponse")
(setf (get astra_camera::SetUVCExposureResponse :definition-)
      "int32 exposure
---
")



(provide :astra_camera/SetUVCExposure "0535ed1a1204bb999d0e7bea8f6c3c81")


