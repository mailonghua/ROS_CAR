;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::ResetIRExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'ResetIRExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::RESETIREXPOSURE")
  (make-package "ASTRA_CAMERA::RESETIREXPOSURE"))
(unless (find-package "ASTRA_CAMERA::RESETIREXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::RESETIREXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::RESETIREXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::RESETIREXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::ResetIRExposureRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::ResetIRExposureRequest
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

(defclass astra_camera::ResetIRExposureResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::ResetIRExposureResponse
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

(defclass astra_camera::ResetIRExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::ResetIRExposure :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRExposure :datatype-) "astra_camera/ResetIRExposure")
(setf (get astra_camera::ResetIRExposure :request) astra_camera::ResetIRExposureRequest)
(setf (get astra_camera::ResetIRExposure :response) astra_camera::ResetIRExposureResponse)

(defmethod astra_camera::ResetIRExposureRequest
  (:response () (instance astra_camera::ResetIRExposureResponse :init)))

(setf (get astra_camera::ResetIRExposureRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRExposureRequest :datatype-) "astra_camera/ResetIRExposureRequest")
(setf (get astra_camera::ResetIRExposureRequest :definition-)
      "---
")

(setf (get astra_camera::ResetIRExposureResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRExposureResponse :datatype-) "astra_camera/ResetIRExposureResponse")
(setf (get astra_camera::ResetIRExposureResponse :definition-)
      "---
")



(provide :astra_camera/ResetIRExposure "d41d8cd98f00b204e9800998ecf8427e")


