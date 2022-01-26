;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetUVCWhiteBalance)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetUVCWhiteBalance (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETUVCWHITEBALANCE")
  (make-package "ASTRA_CAMERA::SETUVCWHITEBALANCE"))
(unless (find-package "ASTRA_CAMERA::SETUVCWHITEBALANCEREQUEST")
  (make-package "ASTRA_CAMERA::SETUVCWHITEBALANCEREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETUVCWHITEBALANCERESPONSE")
  (make-package "ASTRA_CAMERA::SETUVCWHITEBALANCERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetUVCWhiteBalanceRequest
  :super ros::object
  :slots (_white_balance ))

(defmethod astra_camera::SetUVCWhiteBalanceRequest
  (:init
   (&key
    ((:white_balance __white_balance) 0)
    )
   (send-super :init)
   (setq _white_balance (round __white_balance))
   self)
  (:white_balance
   (&optional __white_balance)
   (if __white_balance (setq _white_balance __white_balance)) _white_balance)
  (:serialization-length
   ()
   (+
    ;; int32 _white_balance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _white_balance
       (write-long _white_balance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _white_balance
     (setq _white_balance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass astra_camera::SetUVCWhiteBalanceResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetUVCWhiteBalanceResponse
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

(defclass astra_camera::SetUVCWhiteBalance
  :super ros::object
  :slots ())

(setf (get astra_camera::SetUVCWhiteBalance :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::SetUVCWhiteBalance :datatype-) "astra_camera/SetUVCWhiteBalance")
(setf (get astra_camera::SetUVCWhiteBalance :request) astra_camera::SetUVCWhiteBalanceRequest)
(setf (get astra_camera::SetUVCWhiteBalance :response) astra_camera::SetUVCWhiteBalanceResponse)

(defmethod astra_camera::SetUVCWhiteBalanceRequest
  (:response () (instance astra_camera::SetUVCWhiteBalanceResponse :init)))

(setf (get astra_camera::SetUVCWhiteBalanceRequest :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::SetUVCWhiteBalanceRequest :datatype-) "astra_camera/SetUVCWhiteBalanceRequest")
(setf (get astra_camera::SetUVCWhiteBalanceRequest :definition-)
      "int32 white_balance
---
")

(setf (get astra_camera::SetUVCWhiteBalanceResponse :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::SetUVCWhiteBalanceResponse :datatype-) "astra_camera/SetUVCWhiteBalanceResponse")
(setf (get astra_camera::SetUVCWhiteBalanceResponse :definition-)
      "int32 white_balance
---
")



(provide :astra_camera/SetUVCWhiteBalance "fc2837b62008590625057801873acc63")


