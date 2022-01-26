;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetIRGain)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetIRGain (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETIRGAIN")
  (make-package "ASTRA_CAMERA::GETIRGAIN"))
(unless (find-package "ASTRA_CAMERA::GETIRGAINREQUEST")
  (make-package "ASTRA_CAMERA::GETIRGAINREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETIRGAINRESPONSE")
  (make-package "ASTRA_CAMERA::GETIRGAINRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetIRGainRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetIRGainRequest
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

(defclass astra_camera::GetIRGainResponse
  :super ros::object
  :slots (_gain ))

(defmethod astra_camera::GetIRGainResponse
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

(defclass astra_camera::GetIRGain
  :super ros::object
  :slots ())

(setf (get astra_camera::GetIRGain :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetIRGain :datatype-) "astra_camera/GetIRGain")
(setf (get astra_camera::GetIRGain :request) astra_camera::GetIRGainRequest)
(setf (get astra_camera::GetIRGain :response) astra_camera::GetIRGainResponse)

(defmethod astra_camera::GetIRGainRequest
  (:response () (instance astra_camera::GetIRGainResponse :init)))

(setf (get astra_camera::GetIRGainRequest :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetIRGainRequest :datatype-) "astra_camera/GetIRGainRequest")
(setf (get astra_camera::GetIRGainRequest :definition-)
      "---
int32 gain
")

(setf (get astra_camera::GetIRGainResponse :md5sum-) "164d2201bda8580473ff7023ba27f703")
(setf (get astra_camera::GetIRGainResponse :datatype-) "astra_camera/GetIRGainResponse")
(setf (get astra_camera::GetIRGainResponse :definition-)
      "---
int32 gain
")



(provide :astra_camera/GetIRGain "164d2201bda8580473ff7023ba27f703")


