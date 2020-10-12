;; Auto-generated. Do not edit!


(when (boundp 'swarm::QuadFitness)
  (if (not (find-package "SWARM"))
    (make-package "SWARM"))
  (shadow 'QuadFitness (find-package "SWARM")))
(unless (find-package "SWARM::QUADFITNESS")
  (make-package "SWARM::QUADFITNESS"))

(in-package "ROS")
;;//! \htmlinclude QuadFitness.msg.html


(defclass swarm::QuadFitness
  :super ros::object
  :slots (_quad _fitness ))

(defmethod swarm::QuadFitness
  (:init
   (&key
    ((:quad __quad) (instance swarm::Quad :init))
    ((:fitness __fitness) 0.0)
    )
   (send-super :init)
   (setq _quad __quad)
   (setq _fitness (float __fitness))
   self)
  (:quad
   (&rest __quad)
   (if (keywordp (car __quad))
       (send* _quad __quad)
     (progn
       (if __quad (setq _quad (car __quad)))
       _quad)))
  (:fitness
   (&optional __fitness)
   (if __fitness (setq _fitness __fitness)) _fitness)
  (:serialization-length
   ()
   (+
    ;; swarm/Quad _quad
    (send _quad :serialization-length)
    ;; float64 _fitness
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; swarm/Quad _quad
       (send _quad :serialize s)
     ;; float64 _fitness
       (sys::poke _fitness (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; swarm/Quad _quad
     (send _quad :deserialize buf ptr-) (incf ptr- (send _quad :serialization-length))
   ;; float64 _fitness
     (setq _fitness (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get swarm::QuadFitness :md5sum-) "12db978fc8bae8410b5b93a0f49fcdea")
(setf (get swarm::QuadFitness :datatype-) "swarm/QuadFitness")
(setf (get swarm::QuadFitness :definition-)
      "swarm/Quad quad
float64 fitness

================================================================================
MSG: swarm/Quad
float64 x
float64 y
float64 z
float64 yaw

")



(provide :swarm/QuadFitness "12db978fc8bae8410b5b93a0f49fcdea")


