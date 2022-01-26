;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetIRExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetIRExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETIREXPOSURE")
  (make-package "ASTRA_CAMERA::GETIREXPOSURE"))
(unless (find-package "ASTRA_CAMERA::GETIREXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::GETIREXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETIREXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::GETIREXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetIRExposureRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetIRExposureRequest
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

(defclass astra_camera::GetIRExposureResponse
  :super ros::object
  :slots (_exposure ))

(defmethod astra_camera::GetIRExposureResponse
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

(defclass astra_camera::GetIRExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::GetIRExposure :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetIRExposure :datatype-) "astra_camera/GetIRExposure")
(setf (get astra_camera::GetIRExposure :request) astra_camera::GetIRExposureRequest)
(setf (get astra_camera::GetIRExposure :response) astra_camera::GetIRExposureResponse)

(defmethod astra_camera::GetIRExposureRequest
  (:response () (instance astra_camera::GetIRExposureResponse :init)))

(setf (get astra_camera::GetIRExposureRequest :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetIRExposureRequest :datatype-) "astra_camera/GetIRExposureRequest")
(setf (get astra_camera::GetIRExposureRequest :definition-)
      "---
int32 exposure
")

(setf (get astra_camera::GetIRExposureResponse :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetIRExposureResponse :datatype-) "astra_camera/GetIRExposureResponse")
(setf (get astra_camera::GetIRExposureResponse :definition-)
      "---
int32 exposure
")



(provide :astra_camera/GetIRExposure "0535ed1a1204bb999d0e7bea8f6c3c81")


