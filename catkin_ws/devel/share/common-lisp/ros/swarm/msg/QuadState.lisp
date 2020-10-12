; Auto-generated. Do not edit!


(cl:in-package swarm-msg)


;//! \htmlinclude QuadState.msg.html

(cl:defclass <QuadState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pos
    :reader pos
    :initarg :pos
    :type swarm-msg:Quad
    :initform (cl:make-instance 'swarm-msg:Quad))
   (vel
    :reader vel
    :initarg :vel
    :type swarm-msg:Quad
    :initform (cl:make-instance 'swarm-msg:Quad)))
)

(cl:defclass QuadState (<QuadState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm-msg:<QuadState> is deprecated: use swarm-msg:QuadState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-msg:header-val is deprecated.  Use swarm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-msg:pos-val is deprecated.  Use swarm-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-msg:vel-val is deprecated.  Use swarm-msg:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadState>) ostream)
  "Serializes a message object of type '<QuadState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadState>) istream)
  "Deserializes a message object of type '<QuadState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadState>)))
  "Returns string type for a message object of type '<QuadState>"
  "swarm/QuadState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadState)))
  "Returns string type for a message object of type 'QuadState"
  "swarm/QuadState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadState>)))
  "Returns md5sum for a message object of type '<QuadState>"
  "6a49ed1e7717866decc49a827fbb23dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadState)))
  "Returns md5sum for a message object of type 'QuadState"
  "6a49ed1e7717866decc49a827fbb23dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadState>)))
  "Returns full string definition for message of type '<QuadState>"
  (cl:format cl:nil "std_msgs/Header header~%swarm/Quad pos~%swarm/Quad vel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadState)))
  "Returns full string definition for message of type 'QuadState"
  (cl:format cl:nil "std_msgs/Header header~%swarm/Quad pos~%swarm/Quad vel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadState>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadState
    (cl:cons ':header (header msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
))
