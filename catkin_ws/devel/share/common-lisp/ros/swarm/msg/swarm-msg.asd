
(cl:in-package :asdf)

(defsystem "swarm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Quad" :depends-on ("_package_Quad"))
    (:file "_package_Quad" :depends-on ("_package"))
    (:file "QuadFitness" :depends-on ("_package_QuadFitness"))
    (:file "_package_QuadFitness" :depends-on ("_package"))
    (:file "QuadStamped" :depends-on ("_package_QuadStamped"))
    (:file "_package_QuadStamped" :depends-on ("_package"))
    (:file "QuadState" :depends-on ("_package_QuadState"))
    (:file "_package_QuadState" :depends-on ("_package"))
  ))