;; Auto-generated. Do not edit!


(when (boundp 'swarm::QuadState)
  (if (not (find-package "SWARM"))
    (make-package "SWARM"))
  (shadow 'QuadState (find-package "SWARM")))
(unless (find-package "SWARM::QUADSTATE")
  (make-package "SWARM::QUADSTATE"))

(in-package "ROS")
;;//! \htmlinclude QuadState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm::QuadState
  :super ros::object
  :slots (_header _pos _vel ))

(defmethod swarm::QuadState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos __pos) (instance swarm::Quad :init))
    ((:vel __vel) (instance swarm::Quad :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos __pos)
   (setq _vel __vel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarm/Quad _pos
    (send _pos :serialization-length)
    ;; swarm/Quad _vel
    (send _vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarm/Quad _pos
       (send _pos :serialize s)
     ;; swarm/Quad _vel
       (send _vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarm/Quad _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; swarm/Quad _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;;
   self)
  )

(setf (get swarm::QuadState :md5sum-) "6a49ed1e7717866decc49a827fbb23dc")
(setf (get swarm::QuadState :datatype-) "swarm/QuadState")
(setf (get swarm::QuadState :definition-)
      "std_msgs/Header header
swarm/Quad pos
swarm/Quad vel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: swarm/Quad
float64 x
float64 y
float64 z
float64 yaw

")



(provide :swarm/QuadState "6a49ed1e7717866decc49a827fbb23dc")


