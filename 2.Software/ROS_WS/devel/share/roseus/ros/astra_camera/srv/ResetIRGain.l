;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::ResetIRGain)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'ResetIRGain (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::RESETIRGAIN")
  (make-package "ASTRA_CAMERA::RESETIRGAIN"))
(unless (find-package "ASTRA_CAMERA::RESETIRGAINREQUEST")
  (make-package "ASTRA_CAMERA::RESETIRGAINREQUEST"))
(unless (find-package "ASTRA_CAMERA::RESETIRGAINRESPONSE")
  (make-package "ASTRA_CAMERA::RESETIRGAINRESPONSE"))

(in-package "ROS")





(defclass astra_camera::ResetIRGainRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::ResetIRGainRequest
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

(defclass astra_camera::ResetIRGainResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::ResetIRGainResponse
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

(defclass astra_camera::ResetIRGain
  :super ros::object
  :slots ())

(setf (get astra_camera::ResetIRGain :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRGain :datatype-) "astra_camera/ResetIRGain")
(setf (get astra_camera::ResetIRGain :request) astra_camera::ResetIRGainRequest)
(setf (get astra_camera::ResetIRGain :response) astra_camera::ResetIRGainResponse)

(defmethod astra_camera::ResetIRGainRequest
  (:response () (instance astra_camera::ResetIRGainResponse :init)))

(setf (get astra_camera::ResetIRGainRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRGainRequest :datatype-) "astra_camera/ResetIRGainRequest")
(setf (get astra_camera::ResetIRGainRequest :definition-)
      "---
")

(setf (get astra_camera::ResetIRGainResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get astra_camera::ResetIRGainResponse :datatype-) "astra_camera/ResetIRGainResponse")
(setf (get astra_camera::ResetIRGainResponse :definition-)
      "---
")



(provide :astra_camera/ResetIRGain "d41d8cd98f00b204e9800998ecf8427e")


