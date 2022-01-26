;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetDeviceType)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetDeviceType (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETDEVICETYPE")
  (make-package "ASTRA_CAMERA::GETDEVICETYPE"))
(unless (find-package "ASTRA_CAMERA::GETDEVICETYPEREQUEST")
  (make-package "ASTRA_CAMERA::GETDEVICETYPEREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETDEVICETYPERESPONSE")
  (make-package "ASTRA_CAMERA::GETDEVICETYPERESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetDeviceTypeRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetDeviceTypeRequest
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

(defclass astra_camera::GetDeviceTypeResponse
  :super ros::object
  :slots (_device_type ))

(defmethod astra_camera::GetDeviceTypeResponse
  (:init
   (&key
    ((:device_type __device_type) "")
    )
   (send-super :init)
   (setq _device_type (string __device_type))
   self)
  (:device_type
   (&optional __device_type)
   (if __device_type (setq _device_type __device_type)) _device_type)
  (:serialization-length
   ()
   (+
    ;; string _device_type
    4 (length _device_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _device_type
       (write-long (length _device_type) s) (princ _device_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _device_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetDeviceType
  :super ros::object
  :slots ())

(setf (get astra_camera::GetDeviceType :md5sum-) "4c8e9dd50b39344412b92ce9e1e9615c")
(setf (get astra_camera::GetDeviceType :datatype-) "astra_camera/GetDeviceType")
(setf (get astra_camera::GetDeviceType :request) astra_camera::GetDeviceTypeRequest)
(setf (get astra_camera::GetDeviceType :response) astra_camera::GetDeviceTypeResponse)

(defmethod astra_camera::GetDeviceTypeRequest
  (:response () (instance astra_camera::GetDeviceTypeResponse :init)))

(setf (get astra_camera::GetDeviceTypeRequest :md5sum-) "4c8e9dd50b39344412b92ce9e1e9615c")
(setf (get astra_camera::GetDeviceTypeRequest :datatype-) "astra_camera/GetDeviceTypeRequest")
(setf (get astra_camera::GetDeviceTypeRequest :definition-)
      "---
string device_type
")

(setf (get astra_camera::GetDeviceTypeResponse :md5sum-) "4c8e9dd50b39344412b92ce9e1e9615c")
(setf (get astra_camera::GetDeviceTypeResponse :datatype-) "astra_camera/GetDeviceTypeResponse")
(setf (get astra_camera::GetDeviceTypeResponse :definition-)
      "---
string device_type
")



(provide :astra_camera/GetDeviceType "4c8e9dd50b39344412b92ce9e1e9615c")


