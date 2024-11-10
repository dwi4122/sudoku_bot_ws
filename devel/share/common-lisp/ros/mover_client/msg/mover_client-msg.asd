
(cl:in-package :asdf)

(defsystem "mover_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "grid_num" :depends-on ("_package_grid_num"))
    (:file "_package_grid_num" :depends-on ("_package"))
    (:file "grid_num_vector" :depends-on ("_package_grid_num_vector"))
    (:file "_package_grid_num_vector" :depends-on ("_package"))
  ))