;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::ListWorlds)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'ListWorlds (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::LISTWORLDS")
  (make-package "WORLD_CANVAS_MSGS::LISTWORLDS"))
(unless (find-package "WORLD_CANVAS_MSGS::LISTWORLDSREQUEST")
  (make-package "WORLD_CANVAS_MSGS::LISTWORLDSREQUEST"))
(unless (find-package "WORLD_CANVAS_MSGS::LISTWORLDSRESPONSE")
  (make-package "WORLD_CANVAS_MSGS::LISTWORLDSRESPONSE"))

(in-package "ROS")





(defclass world_canvas_msgs::ListWorldsRequest
  :super ros::object
  :slots ())

(defmethod world_canvas_msgs::ListWorldsRequest
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

(defclass world_canvas_msgs::ListWorldsResponse
  :super ros::object
  :slots (_names ))

(defmethod world_canvas_msgs::ListWorldsResponse
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass world_canvas_msgs::ListWorlds
  :super ros::object
  :slots ())

(setf (get world_canvas_msgs::ListWorlds :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get world_canvas_msgs::ListWorlds :datatype-) "world_canvas_msgs/ListWorlds")
(setf (get world_canvas_msgs::ListWorlds :request) world_canvas_msgs::ListWorldsRequest)
(setf (get world_canvas_msgs::ListWorlds :response) world_canvas_msgs::ListWorldsResponse)

(defmethod world_canvas_msgs::ListWorldsRequest
  (:response () (instance world_canvas_msgs::ListWorldsResponse :init)))

(setf (get world_canvas_msgs::ListWorldsRequest :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get world_canvas_msgs::ListWorldsRequest :datatype-) "world_canvas_msgs/ListWorldsRequest")
(setf (get world_canvas_msgs::ListWorldsRequest :definition-)
      "# Get a list of all the worlds in database.
# TODO: following this issue (https://github.com/corot/world_canvas/issues/20) we may
# enhance this service returning a list of WorldCanvas objects or something similar
---
string[] names
")

(setf (get world_canvas_msgs::ListWorldsResponse :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get world_canvas_msgs::ListWorldsResponse :datatype-) "world_canvas_msgs/ListWorldsResponse")
(setf (get world_canvas_msgs::ListWorldsResponse :definition-)
      "# Get a list of all the worlds in database.
# TODO: following this issue (https://github.com/corot/world_canvas/issues/20) we may
# enhance this service returning a list of WorldCanvas objects or something similar
---
string[] names
")



(provide :world_canvas_msgs/ListWorlds "dc7ae3609524b18034e49294a4ce670e")


