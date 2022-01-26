;; Auto-generated. Do not edit!


(when (boundp 'world_canvas_msgs::MapListEntry)
  (if (not (find-package "WORLD_CANVAS_MSGS"))
    (make-package "WORLD_CANVAS_MSGS"))
  (shadow 'MapListEntry (find-package "WORLD_CANVAS_MSGS")))
(unless (find-package "WORLD_CANVAS_MSGS::MAPLISTENTRY")
  (make-package "WORLD_CANVAS_MSGS::MAPLISTENTRY"))

(in-package "ROS")
;;//! \htmlinclude MapListEntry.msg.html


(defclass world_canvas_msgs::MapListEntry
  :super ros::object
  :slots (_name _session_id _date _map_id ))

(defmethod world_canvas_msgs::MapListEntry
  (:init
   (&key
    ((:name __name) "")
    ((:session_id __session_id) "")
    ((:date __date) 0)
    ((:map_id __map_id) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _session_id (string __session_id))
   (setq _date (round __date))
   (setq _map_id (string __map_id))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:session_id
   (&optional __session_id)
   (if __session_id (setq _session_id __session_id)) _session_id)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _session_id
    4 (length _session_id)
    ;; int64 _date
    8
    ;; string _map_id
    4 (length _map_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _session_id
       (write-long (length _session_id) s) (princ _session_id s)
     ;; int64 _date
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _date (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _date) (= (length (_date . bv)) 2)) ;; bignum
              (write-long (ash (elt (_date . bv) 0) 0) s)
              (write-long (ash (elt (_date . bv) 1) -1) s))
             ((and (class _date) (= (length (_date . bv)) 1)) ;; big1
              (write-long (elt (_date . bv) 0) s)
              (write-long (if (>= _date 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _date s)(write-long (if (>= _date 0) 0 #xffffffff) s)))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _session_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _session_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _date
#+(or :alpha :irix6 :x86_64)
      (setf _date (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _date (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get world_canvas_msgs::MapListEntry :md5sum-) "092f024758d394d17196cd37d999fdb0")
(setf (get world_canvas_msgs::MapListEntry :datatype-) "world_canvas_msgs/MapListEntry")
(setf (get world_canvas_msgs::MapListEntry :definition-)
      "# One entry in a list of maps.

# Naming a map is optional.
string name

# Maps made by the make-a-map app are given a session ID, which is the
# time when the map-making session was started, expressed as seconds
# since the epoch and converted to a string.
string session_id

# Creation time of this map, in seconds since the epoch.
int64 date

# Unique ID of this map.
string map_id

")



(provide :world_canvas_msgs/MapListEntry "092f024758d394d17196cd37d999fdb0")


