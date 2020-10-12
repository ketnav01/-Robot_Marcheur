;; Auto-generated. Do not edit!


(when (boundp 'swarm::Fitness)
  (if (not (find-package "SWARM"))
    (make-package "SWARM"))
  (shadow 'Fitness (find-package "SWARM")))
(unless (find-package "SWARM::FITNESS")
  (make-package "SWARM::FITNESS"))
(unless (find-package "SWARM::FITNESSREQUEST")
  (make-package "SWARM::FITNESSREQUEST"))
(unless (find-package "SWARM::FITNESSRESPONSE")
  (make-package "SWARM::FITNESSRESPONSE"))

(in-package "ROS")





(defclass swarm::FitnessRequest
  :super ros::object
  :slots (_quad ))

(defmethod swarm::FitnessRequest
  (:init
   (&key
    ((:quad __quad) (instance swarm::Quad :init))
    )
   (send-super :init)
   (setq _quad __quad)
   self)
  (:quad
   (&rest __quad)
   (if (keywordp (car __quad))
       (send* _quad __quad)
     (progn
       (if __quad (setq _quad (car __quad)))
       _quad)))
  (:serialization-length
   ()
   (+
    ;; swarm/Quad _quad
    (send _quad :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; swarm/Quad _quad
       (send _quad :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; swarm/Quad _quad
     (send _quad :deserialize buf ptr-) (incf ptr- (send _quad :serialization-length))
   ;;
   self)
  )

(defclass swarm::FitnessResponse
  :super ros::object
  :slots (_fitness ))

(defmethod swarm::FitnessResponse
  (:init
   (&key
    ((:fitness __fitness) 0)
    )
   (send-super :init)
   (setq _fitness (round __fitness))
   self)
  (:fitness
   (&optional __fitness)
   (if __fitness (setq _fitness __fitness)) _fitness)
  (:serialization-length
   ()
   (+
    ;; int64 _fitness
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _fitness
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fitness (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fitness) (= (length (_fitness . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fitness . bv) 0) 0) s)
              (write-long (ash (elt (_fitness . bv) 1) -1) s))
             ((and (class _fitness) (= (length (_fitness . bv)) 1)) ;; big1
              (write-long (elt (_fitness . bv) 0) s)
              (write-long (if (>= _fitness 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fitness s)(write-long (if (>= _fitness 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _fitness
#+(or :alpha :irix6 :x86_64)
      (setf _fitness (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fitness (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass swarm::Fitness
  :super ros::object
  :slots ())

(setf (get swarm::Fitness :md5sum-) "fe78a2c0310f3b53936a4c9d63f9c31b")
(setf (get swarm::Fitness :datatype-) "swarm/Fitness")
(setf (get swarm::Fitness :request) swarm::FitnessRequest)
(setf (get swarm::Fitness :response) swarm::FitnessResponse)

(defmethod swarm::FitnessRequest
  (:response () (instance swarm::FitnessResponse :init)))

(setf (get swarm::FitnessRequest :md5sum-) "fe78a2c0310f3b53936a4c9d63f9c31b")
(setf (get swarm::FitnessRequest :datatype-) "swarm/FitnessRequest")
(setf (get swarm::FitnessRequest :definition-)
      "swarm/Quad quad

================================================================================
MSG: swarm/Quad
float64 x
float64 y
float64 z
float64 yaw
---
int64 fitness
")

(setf (get swarm::FitnessResponse :md5sum-) "fe78a2c0310f3b53936a4c9d63f9c31b")
(setf (get swarm::FitnessResponse :datatype-) "swarm/FitnessResponse")
(setf (get swarm::FitnessResponse :definition-)
      "swarm/Quad quad

================================================================================
MSG: swarm/Quad
float64 x
float64 y
float64 z
float64 yaw
---
int64 fitness
")



(provide :swarm/Fitness "fe78a2c0310f3b53936a4c9d63f9c31b")


