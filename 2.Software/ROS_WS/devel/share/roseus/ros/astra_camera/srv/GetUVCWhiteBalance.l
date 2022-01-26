;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetUVCWhiteBalance)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetUVCWhiteBalance (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETUVCWHITEBALANCE")
  (make-package "ASTRA_CAMERA::GETUVCWHITEBALANCE"))
(unless (find-package "ASTRA_CAMERA::GETUVCWHITEBALANCEREQUEST")
  (make-package "ASTRA_CAMERA::GETUVCWHITEBALANCEREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETUVCWHITEBALANCERESPONSE")
  (make-package "ASTRA_CAMERA::GETUVCWHITEBALANCERESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetUVCWhiteBalanceRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetUVCWhiteBalanceRequest
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

(defclass astra_camera::GetUVCWhiteBalanceResponse
  :super ros::object
  :slots (_white_balance ))

(defmethod astra_camera::GetUVCWhiteBalanceResponse
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

(defclass astra_camera::GetUVCWhiteBalance
  :super ros::object
  :slots ())

(setf (get astra_camera::GetUVCWhiteBalance :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::GetUVCWhiteBalance :datatype-) "astra_camera/GetUVCWhiteBalance")
(setf (get astra_camera::GetUVCWhiteBalance :request) astra_camera::GetUVCWhiteBalanceRequest)
(setf (get astra_camera::GetUVCWhiteBalance :response) astra_camera::GetUVCWhiteBalanceResponse)

(defmethod astra_camera::GetUVCWhiteBalanceRequest
  (:response () (instance astra_camera::GetUVCWhiteBalanceResponse :init)))

(setf (get astra_camera::GetUVCWhiteBalanceRequest :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::GetUVCWhiteBalanceRequest :datatype-) "astra_camera/GetUVCWhiteBalanceRequest")
(setf (get astra_camera::GetUVCWhiteBalanceRequest :definition-)
      "---
int32 white_balance
")

(setf (get astra_camera::GetUVCWhiteBalanceResponse :md5sum-) "fc2837b62008590625057801873acc63")
(setf (get astra_camera::GetUVCWhiteBalanceResponse :datatype-) "astra_camera/GetUVCWhiteBalanceResponse")
(setf (get astra_camera::GetUVCWhiteBalanceResponse :definition-)
      "---
int32 white_balance
")



(provide :astra_camera/GetUVCWhiteBalance "fc2837b62008590625057801873acc63")


