;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SwitchIRCamera)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SwitchIRCamera (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SWITCHIRCAMERA")
  (make-package "ASTRA_CAMERA::SWITCHIRCAMERA"))
(unless (find-package "ASTRA_CAMERA::SWITCHIRCAMERAREQUEST")
  (make-package "ASTRA_CAMERA::SWITCHIRCAMERAREQUEST"))
(unless (find-package "ASTRA_CAMERA::SWITCHIRCAMERARESPONSE")
  (make-package "ASTRA_CAMERA::SWITCHIRCAMERARESPONSE"))

(in-package "ROS")





(defclass astra_camera::SwitchIRCameraRequest
  :super ros::object
  :slots (_camera ))

(defmethod astra_camera::SwitchIRCameraRequest
  (:init
   (&key
    ((:camera __camera) "")
    )
   (send-super :init)
   (setq _camera (string __camera))
   self)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:serialization-length
   ()
   (+
    ;; string _camera
    4 (length _camera)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camera
       (write-long (length _camera) s) (princ _camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camera
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::SwitchIRCameraResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SwitchIRCameraResponse
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

(defclass astra_camera::SwitchIRCamera
  :super ros::object
  :slots ())

(setf (get astra_camera::SwitchIRCamera :md5sum-) "8162e9a89f39d80b11a715b34e890034")
(setf (get astra_camera::SwitchIRCamera :datatype-) "astra_camera/SwitchIRCamera")
(setf (get astra_camera::SwitchIRCamera :request) astra_camera::SwitchIRCameraRequest)
(setf (get astra_camera::SwitchIRCamera :response) astra_camera::SwitchIRCameraResponse)

(defmethod astra_camera::SwitchIRCameraRequest
  (:response () (instance astra_camera::SwitchIRCameraResponse :init)))

(setf (get astra_camera::SwitchIRCameraRequest :md5sum-) "8162e9a89f39d80b11a715b34e890034")
(setf (get astra_camera::SwitchIRCameraRequest :datatype-) "astra_camera/SwitchIRCameraRequest")
(setf (get astra_camera::SwitchIRCameraRequest :definition-)
      "string camera
---
")

(setf (get astra_camera::SwitchIRCameraResponse :md5sum-) "8162e9a89f39d80b11a715b34e890034")
(setf (get astra_camera::SwitchIRCameraResponse :datatype-) "astra_camera/SwitchIRCameraResponse")
(setf (get astra_camera::SwitchIRCameraResponse :definition-)
      "string camera
---
")



(provide :astra_camera/SwitchIRCamera "8162e9a89f39d80b11a715b34e890034")


