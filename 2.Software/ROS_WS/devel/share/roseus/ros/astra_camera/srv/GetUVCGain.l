;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetUVCGain)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetUVCGain (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETUVCGAIN")
  (make-package "ASTRA_CAMERA::GETUVCGAIN"))
(unless (find-package "ASTRA_CAMERA::GETUVCGAINREQUEST")
  (make-package "ASTRA_CAMERA::GETUVCGAINREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETUVCGAINRESPONSE")
  (make-package "ASTRA_CAMERA::GETUVCGAINRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetUVCGainRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetUVCGainRequest
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

(defclass astra_camera::GetUVCGainResponse
  :super ros::object
  :slots (_gain ))

(defmethod astra_camera::GetUVCGainResponse
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

(defclass astra_camera::GetUVCGain
  :super ros::object
  :slots ())

(setf (get astra_camera::GetUVCGain :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetUVCGain :datatype-) "astra_camera/GetUVCGain")
(setf (get astra_camera::GetUVCGain :request) astra_camera::GetUVCGainRequest)
(setf (get astra_camera::GetUVCGain :response) astra_camera::GetUVCGainResponse)

(defmethod astra_camera::GetUVCGainRequest
  (:response () (instance astra_camera::GetUVCGainResponse :init)))

(setf (get astra_camera::GetUVCGainRequest :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetUVCGainRequest :datatype-) "astra_camera/GetUVCGainRequest")
(setf (get astra_camera::GetUVCGainRequest :definition-)
      "---
int32 gain
")

(setf (get astra_camera::GetUVCGainResponse :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetUVCGainResponse :datatype-) "astra_camera/GetUVCGainResponse")
(setf (get astra_camera::GetUVCGainResponse :definition-)
      "---
int32 gain
")



(provide :astra_camera/GetUVCGain "164d2201bda8580473ff7023ba27f703")


