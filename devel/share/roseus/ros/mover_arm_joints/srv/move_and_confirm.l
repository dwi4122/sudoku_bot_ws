;; Auto-generated. Do not edit!


(when (boundp 'mover_arm_joints::move_and_confirm)
  (if (not (find-package "MOVER_ARM_JOINTS"))
    (make-package "MOVER_ARM_JOINTS"))
  (shadow 'move_and_confirm (find-package "MOVER_ARM_JOINTS")))
(unless (find-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRM")
  (make-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRM"))
(unless (find-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRMREQUEST")
  (make-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRMREQUEST"))
(unless (find-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRMRESPONSE")
  (make-package "MOVER_ARM_JOINTS::MOVE_AND_CONFIRMRESPONSE"))

(in-package "ROS")





(defclass mover_arm_joints::move_and_confirmRequest
  :super ros::object
  :slots (_move _confirm ))

(defmethod mover_arm_joints::move_and_confirmRequest
  (:init
   (&key
    ((:move __move) 0.0)
    ((:confirm __confirm) 0.0)
    )
   (send-super :init)
   (setq _move (float __move))
   (setq _confirm (float __confirm))
   self)
  (:move
   (&optional __move)
   (if __move (setq _move __move)) _move)
  (:confirm
   (&optional __confirm)
   (if __confirm (setq _confirm __confirm)) _confirm)
  (:serialization-length
   ()
   (+
    ;; float64 _move
    8
    ;; float64 _confirm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _move
       (sys::poke _move (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confirm
       (sys::poke _confirm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _move
     (setq _move (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confirm
     (setq _confirm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mover_arm_joints::move_and_confirmResponse
  :super ros::object
  :slots ())

(defmethod mover_arm_joints::move_and_confirmResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mover_arm_joints::move_and_confirm
  :super ros::object
  :slots ())

(setf (get mover_arm_joints::move_and_confirm :md5sum-) "d3996e189f231d649f823398a7475c7d")
(setf (get mover_arm_joints::move_and_confirm :datatype-) "mover_arm_joints/move_and_confirm")
(setf (get mover_arm_joints::move_and_confirm :request) mover_arm_joints::move_and_confirmRequest)
(setf (get mover_arm_joints::move_and_confirm :response) mover_arm_joints::move_and_confirmResponse)

(defmethod mover_arm_joints::move_and_confirmRequest
  (:response () (instance mover_arm_joints::move_and_confirmResponse :init)))

(setf (get mover_arm_joints::move_and_confirmRequest :md5sum-) "d3996e189f231d649f823398a7475c7d")
(setf (get mover_arm_joints::move_and_confirmRequest :datatype-) "mover_arm_joints/move_and_confirmRequest")
(setf (get mover_arm_joints::move_and_confirmRequest :definition-)
      "float64 move
float64 confirm

---
")

(setf (get mover_arm_joints::move_and_confirmResponse :md5sum-) "d3996e189f231d649f823398a7475c7d")
(setf (get mover_arm_joints::move_and_confirmResponse :datatype-) "mover_arm_joints/move_and_confirmResponse")
(setf (get mover_arm_joints::move_and_confirmResponse :definition-)
      "float64 move
float64 confirm

---
")



(provide :mover_arm_joints/move_and_confirm "d3996e189f231d649f823398a7475c7d")


