;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::WorldCanvas)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'WorldCanvas (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::WORLDCANVAS")
  (make-package "WORLD_CANVAS_MSGS::WORLDCANVAS"))

(in-package "ROS")
;;//! \htmlinclude WorldCanvas.msg.html


(defclass world_canvas_msgs::WorldCanvas
  :super ros::object
  :slots (_timestamp _name _description _geometry ))

(defmethod world_canvas_msgs::WorldCanvas
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:name __name) "")
    ((:description __description) "")
    ((:geometry __geometry) "")
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _geometry (string __geometry))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:geometry
   (&optional __geometry)
   (if __geometry (setq _geometry __geometry)) _geometry)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; string _geometry
    4 (length _geometry)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _geometry
       (write-long (length _geometry) s) (princ _geometry s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _geometry
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _geometry (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get world_canvas_msgs::WorldCanvas :md5sum-) "6d7c521a48d85a2b09f0d0c03fe5f648")
(setf (get world_canvas_msgs::WorldCanvas :datatype-) "world_canvas_msgs/WorldCanvas")
(setf (get world_canvas_msgs::WorldCanvas :definition-)
      "# World canvas: a generic descriptor for a world, typically containing one or more geometric maps
# plus semantic information in the form of annotations.
#  - timestamp   : Creation/last update time
#  - name        : World name; it must be unique
#  - description : Informal description
#  - geometry    : 2D, 3D (just informative by now)

time timestamp
string name
string description
string geometry
")



(provide :world_canvas_msgs/WorldCanvas "6d7c521a48d85a2b09f0d0c03fe5f648")


