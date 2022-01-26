;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetUVCExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetUVCExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETUVCEXPOSURE")
  (make-package "ASTRA_CAMERA::GETUVCEXPOSURE"))
(unless (find-package "ASTRA_CAMERA::GETUVCEXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::GETUVCEXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETUVCEXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::GETUVCEXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetUVCExposureRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetUVCExposureRequest
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

(defclass astra_camera::GetUVCExposureResponse
  :super ros::object
  :slots (_exposure ))

(defmethod astra_camera::GetUVCExposureResponse
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

(defclass astra_camera::GetUVCExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::GetUVCExposure :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetUVCExposure :datatype-) "astra_camera/GetUVCExposure")
(setf (get astra_camera::GetUVCExposure :request) astra_camera::GetUVCExposureRequest)
(setf (get astra_camera::GetUVCExposure :response) astra_camera::GetUVCExposureResponse)

(defmethod astra_camera::GetUVCExposureRequest
  (:response () (instance astra_camera::GetUVCExposureResponse :init)))

(setf (get astra_camera::GetUVCExposureRequest :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetUVCExposureRequest :datatype-) "astra_camera/GetUVCExposureRequest")
(setf (get astra_camera::GetUVCExposureRequest :definition-)
      "---
int32 exposure
")

(setf (get astra_camera::GetUVCExposureResponse :md5sum-) "0535ed1a1204bb999d0e7bea8f6c3c81")
(setf (get astra_camera::GetUVCExposureResponse :datatype-) "astra_camera/GetUVCExposureResponse")
(setf (get astra_camera::GetUVCExposureResponse :definition-)
      "---
int32 exposure
")



(provide :astra_camera/GetUVCExposure "0535ed1a1204bb999d0e7bea8f6c3c81")


