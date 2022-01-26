;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetLDP)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetLDP (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETLDP")
  (make-package "ASTRA_CAMERA::SETLDP"))
(unless (find-package "ASTRA_CAMERA::SETLDPREQUEST")
  (make-package "ASTRA_CAMERA::SETLDPREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETLDPRESPONSE")
  (make-package "ASTRA_CAMERA::SETLDPRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetLDPRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetLDPRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astra_camera::SetLDPResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetLDPResponse
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

(defclass astra_camera::SetLDP
  :super ros::object
  :slots ())

(setf (get astra_camera::SetLDP :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLDP :datatype-) "astra_camera/SetLDP")
(setf (get astra_camera::SetLDP :request) astra_camera::SetLDPRequest)
(setf (get astra_camera::SetLDP :response) astra_camera::SetLDPResponse)

(defmethod astra_camera::SetLDPRequest
  (:response () (instance astra_camera::SetLDPResponse :init)))

(setf (get astra_camera::SetLDPRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLDPRequest :datatype-) "astra_camera/SetLDPRequest")
(setf (get astra_camera::SetLDPRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetLDPResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetLDPResponse :datatype-) "astra_camera/SetLDPResponse")
(setf (get astra_camera::SetLDPResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetLDP "8c1211af706069c994c06e00eb59ac9e")


