
(cl:in-package :asdf)

(defsystem "mover_arm_joints-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "move_and_confirm" :depends-on ("_package_move_and_confirm"))
    (:file "_package_move_and_confirm" :depends-on ("_package"))
  ))