;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetIRGain)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetIRGain (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETIRGAIN")
  (make-package "ASTRA_CAMERA::SETIRGAIN"))
(unless (find-package "ASTRA_CAMERA::SETIRGAINREQUEST")
  (make-package "ASTRA_CAMERA::SETIRGAINREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETIRGAINRESPONSE")
  (make-package "ASTRA_CAMERA::SETIRGAINRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetIRGainRequest
  :super ros::object
  :slots (_gain ))

(defmethod astra_camera::SetIRGainRequest
  (:init
   (&key
    ((:gain __gain) 0)
    )
   (send-super :init)
   (setq _gain (round __gain))
   self)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; int32 _gain
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _gain
       (write-long _gain s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _gain
     (setq _gain (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass astra_camera::SetIRGainResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetIRGainResponse
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

(defclass astra_camera::SetIRGain
  :super ros::object
  :slots ())

(setf (get astra_camera::SetIRGain :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetIRGain :datatype-) "astra_camera/SetIRGain")
(setf (get astra_camera::SetIRGain :request) astra_camera::SetIRGainRequest)
(setf (get astra_camera::SetIRGain :response) astra_camera::SetIRGainResponse)

(defmethod astra_camera::SetIRGainRequest
  (:response () (instance astra_camera::SetIRGainResponse :init)))

(setf (get astra_camera::SetIRGainRequest :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetIRGainRequest :datatype-) "astra_camera/SetIRGainRequest")
(setf (get astra_camera::SetIRGainRequest :definition-)
      "int32 gain
---
")

(setf (get astra_camera::SetIRGainResponse :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetIRGainResponse :datatype-) "astra_camera/SetIRGainResponse")
(setf (get astra_camera::SetIRGainResponse :definition-)
      "int32 gain
---
")



(provide :astra_camera/SetIRGain "164d2201bda8580473ff7023ba27f703")


