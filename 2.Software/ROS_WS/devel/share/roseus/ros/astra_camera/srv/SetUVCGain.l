;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetUVCGain)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetUVCGain (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETUVCGAIN")
  (make-package "ASTRA_CAMERA::SETUVCGAIN"))
(unless (find-package "ASTRA_CAMERA::SETUVCGAINREQUEST")
  (make-package "ASTRA_CAMERA::SETUVCGAINREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETUVCGAINRESPONSE")
  (make-package "ASTRA_CAMERA::SETUVCGAINRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetUVCGainRequest
  :super ros::object
  :slots (_gain ))

(defmethod astra_camera::SetUVCGainRequest
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

(defclass astra_camera::SetUVCGainResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetUVCGainResponse
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

(defclass astra_camera::SetUVCGain
  :super ros::object
  :slots ())

(setf (get astra_camera::SetUVCGain :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetUVCGain :datatype-) "astra_camera/SetUVCGain")
(setf (get astra_camera::SetUVCGain :request) astra_camera::SetUVCGainRequest)
(setf (get astra_camera::SetUVCGain :response) astra_camera::SetUVCGainResponse)

(defmethod astra_camera::SetUVCGainRequest
  (:response () (instance astra_camera::SetUVCGainResponse :init)))

(setf (get astra_camera::SetUVCGainRequest :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetUVCGainRequest :datatype-) "astra_camera/SetUVCGainRequest")
(setf (get astra_camera::SetUVCGainRequest :definition-)
      "int32 gain
---
")

(setf (get astra_camera::SetUVCGainResponse :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::SetUVCGainResponse :datatype-) "astra_camera/SetUVCGainResponse")
(setf (get astra_camera::SetUVCGainResponse :definition-)
      "int32 gain
---
")



(provide :astra_camera/SetUVCGain "164d2201bda8580473ff7023ba27f703")


