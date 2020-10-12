
(cl:in-package :asdf)

(defsystem "swarm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :swarm-msg
)
  :components ((:file "_package")
    (:file "Fitness" :depends-on ("_package_Fitness"))
    (:file "_package_Fitness" :depends-on ("_package"))
  ))