; Auto-generated. Do not edit!


(cl:in-package swarm-srv)


;//! \htmlinclude Fitness-request.msg.html

(cl:defclass <Fitness-request> (roslisp-msg-protocol:ros-message)
  ((quad
    :reader quad
    :initarg :quad
    :type swarm-msg:Quad
    :initform (cl:make-instance 'swarm-msg:Quad)))
)

(cl:defclass Fitness-request (<Fitness-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fitness-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fitness-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm-srv:<Fitness-request> is deprecated: use swarm-srv:Fitness-request instead.")))

(cl:ensure-generic-function 'quad-val :lambda-list '(m))
(cl:defmethod quad-val ((m <Fitness-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-srv:quad-val is deprecated.  Use swarm-srv:quad instead.")
  (quad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fitness-request>) ostream)
  "Serializes a message object of type '<Fitness-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quad) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fitness-request>) istream)
  "Deserializes a message object of type '<Fitness-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quad) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fitness-request>)))
  "Returns string type for a service object of type '<Fitness-request>"
  "swarm/FitnessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fitness-request)))
  "Returns string type for a service object of type 'Fitness-request"
  "swarm/FitnessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fitness-request>)))
  "Returns md5sum for a message object of type '<Fitness-request>"
  "fe78a2c0310f3b53936a4c9d63f9c31b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fitness-request)))
  "Returns md5sum for a message object of type 'Fitness-request"
  "fe78a2c0310f3b53936a4c9d63f9c31b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fitness-request>)))
  "Returns full string definition for message of type '<Fitness-request>"
  (cl:format cl:nil "swarm/Quad quad~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fitness-request)))
  "Returns full string definition for message of type 'Fitness-request"
  (cl:format cl:nil "swarm/Quad quad~%~%================================================================================~%MSG: swarm/Quad~%float64 x~%float64 y~%float64 z~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fitness-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quad))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fitness-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Fitness-request
    (cl:cons ':quad (quad msg))
))
;//! \htmlinclude Fitness-response.msg.html

(cl:defclass <Fitness-response> (roslisp-msg-protocol:ros-message)
  ((fitness
    :reader fitness
    :initarg :fitness
    :type cl:integer
    :initform 0))
)

(cl:defclass Fitness-response (<Fitness-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fitness-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fitness-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm-srv:<Fitness-response> is deprecated: use swarm-srv:Fitness-response instead.")))

(cl:ensure-generic-function 'fitness-val :lambda-list '(m))
(cl:defmethod fitness-val ((m <Fitness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm-srv:fitness-val is deprecated.  Use swarm-srv:fitness instead.")
  (fitness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fitness-response>) ostream)
  "Serializes a message object of type '<Fitness-response>"
  (cl:let* ((signed (cl:slot-value msg 'fitness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fitness-response>) istream)
  "Deserializes a message object of type '<Fitness-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fitness) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fitness-response>)))
  "Returns string type for a service object of type '<Fitness-response>"
  "swarm/FitnessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fitness-response)))
  "Returns string type for a service object of type 'Fitness-response"
  "swarm/FitnessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fitness-response>)))
  "Returns md5sum for a message object of type '<Fitness-response>"
  "fe78a2c0310f3b53936a4c9d63f9c31b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fitness-response)))
  "Returns md5sum for a message object of type 'Fitness-response"
  "fe78a2c0310f3b53936a4c9d63f9c31b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fitness-response>)))
  "Returns full string definition for message of type '<Fitness-response>"
  (cl:format cl:nil "int64 fitness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fitness-response)))
  "Returns full string definition for message of type 'Fitness-response"
  (cl:format cl:nil "int64 fitness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fitness-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fitness-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Fitness-response
    (cl:cons ':fitness (fitness msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Fitness)))
  'Fitness-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Fitness)))
  'Fitness-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fitness)))
  "Returns string type for a service object of type '<Fitness>"
  "swarm/Fitness")