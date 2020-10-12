; Auto-generated. Do not edit!


(cl:in-package swarm-msg)


;//! \htmlinclude QuadFitness.msg.html

(cl:defclass <QuadFitness> (roslisp-msg-protocol:ros-message)
  ((quad
    :reader quad
    :initarg :quad
    :type swarm-msg:Quad
    :initform (cl:make-instance 'swarm-msg:Quad))
   (fitness
    :reader fitness
    :initarg :fitness
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadFitness (<QuadFitness>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadFitness>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadFitness)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm-msg:<QuadFitness> is deprecated: use swarm-msg:QuadFitness instead.")))

(cl:ensure-generic-function 'quad-val :lambda-list '(m))
(cl:defmethod quad-val ((m <QuadFitness>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-msg:quad-val is deprecated.  Use swarm-msg:quad instead.")
  (quad m))

(cl:ensure-generic-function 'fitness-val :lambda-list '(m))
(cl:defmethod fitness-val ((m <QuadFitness>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-msg:fitness-val is deprecated.  Use swarm-msg:fitness instead.")
  (fitness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadFitness>) ostream)
  "Serializes a message object of type '<QuadFitness>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quad) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fitness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadFitness>) istream)
  "Deserializes a message object of type '<QuadFitness>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quad) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fitness) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadFitness>)))
  "Returns string type for a message object of type '<QuadFitness>"
  "swarm/QuadFitness")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadFitness)))
  "Returns string type for a message object of type 'QuadFitness"
  "swarm/QuadFitness")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadFitness>)))
  "Returns md5sum for a message object of type '<QuadFitness>"
  "12db978fc8bae8410b5b93a0f49fcdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadFitness)))
  "Returns md5sum for a message object of type 'QuadFitness"
  "12db978fc8bae8410b5b93a0f49fcdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadFitness>)))
  "Returns full string definition for message of type '<QuadFitness>"
  (cl:format cl:nil "swarm/Quad quad~%float64 fitness~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadFitness)))
  "Returns full string definition for message of type 'QuadFitness"
  (cl:format cl:nil "swarm/Quad quad~%float64 fitness~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadFitness>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quad))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadFitness>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadFitness
    (cl:cons ':quad (quad msg))
    (cl:cons ':fitness (fitness msg))
))
