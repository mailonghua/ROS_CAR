;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetSerial)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetSerial (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETSERIAL")
  (make-package "ASTRA_CAMERA::GETSERIAL"))
(unless (find-package "ASTRA_CAMERA::GETSERIALREQUEST")
  (make-package "ASTRA_CAMERA::GETSERIALREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETSERIALRESPONSE")
  (make-package "ASTRA_CAMERA::GETSERIALRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetSerialRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetSerialRequest
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

(defclass astra_camera::GetSerialResponse
  :super ros::object
  :slots (_serial ))

(defmethod astra_camera::GetSerialResponse
  (:init
   (&key
    ((:serial __serial) "")
    )
   (send-super :init)
   (setq _serial (string __serial))
   self)
  (:serial
   (&optional __serial)
   (if __serial (setq _serial __serial)) _serial)
  (:serialization-length
   ()
   (+
    ;; string _serial
    4 (length _serial)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _serial
       (write-long (length _serial) s) (princ _serial s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _serial
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetSerial
  :super ros::object
  :slots ())

(setf (get astra_camera::GetSerial :md5sum-) "fca40cf463282a80db4e2037c8a61741")
(setf (get astra_camera::GetSerial :datatype-) "astra_camera/GetSerial")
(setf (get astra_camera::GetSerial :request) astra_camera::GetSerialRequest)
(setf (get astra_camera::GetSerial :response) astra_camera::GetSerialResponse)

(defmethod astra_camera::GetSerialRequest
  (:response () (instance astra_camera::GetSerialResponse :init)))

(setf (get astra_camera::GetSerialRequest :md5sum-) "fca40cf463282a80db4e2037c8a61741")
(setf (get astra_camera::GetSerialRequest :datatype-) "astra_camera/GetSerialRequest")
(setf (get astra_camera::GetSerialRequest :definition-)
      "---
string serial

")

(setf (get astra_camera::GetSerialResponse :md5sum-) "fca40cf463282a80db4e2037c8a61741")
(setf (get astra_camera::GetSerialResponse :datatype-) "astra_camera/GetSerialResponse")
(setf (get astra_camera::GetSerialResponse :definition-)
      "---
string serial

")



(provide :astra_camera/GetSerial "fca40cf463282a80db4e2037c8a61741")


