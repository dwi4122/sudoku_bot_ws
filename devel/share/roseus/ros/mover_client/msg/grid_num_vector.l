;; Auto-generated. Do not edit!


(when (boundp 'mover_client::grid_num_vector)
  (if (not (find-package "MOVER_CLIENT"))
    (make-package "MOVER_CLIENT"))
  (shadow 'grid_num_vector (find-package "MOVER_CLIENT")))
(unless (find-package "MOVER_CLIENT::GRID_NUM_VECTOR")
  (make-package "MOVER_CLIENT::GRID_NUM_VECTOR"))

(in-package "ROS")
;;//! \htmlinclude grid_num_vector.msg.html


(defclass mover_client::grid_num_vector
  :super ros::object
  :slots (_numbered_grids ))

(defmethod mover_client::grid_num_vector
  (:init
   (&key
    ((:numbered_grids __numbered_grids) ())
    )
   (send-super :init)
   (setq _numbered_grids __numbered_grids)
   self)
  (:numbered_grids
   (&rest __numbered_grids)
   (if (keywordp (car __numbered_grids))
       (send* _numbered_grids __numbered_grids)
     (progn
       (if __numbered_grids (setq _numbered_grids (car __numbered_grids)))
       _numbered_grids)))
  (:serialization-length
   ()
   (+
    ;; mover_client/grid_num[] _numbered_grids
    (apply #'+ (send-all _numbered_grids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mover_client/grid_num[] _numbered_grids
     (write-long (length _numbered_grids) s)
     (dolist (elem _numbered_grids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mover_client/grid_num[] _numbered_grids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _numbered_grids (let (r) (dotimes (i n) (push (instance mover_client::grid_num :init) r)) r))
     (dolist (elem- _numbered_grids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mover_client::grid_num_vector :md5sum-) "93d1cb10c3e6ec95919ceb70fdb3e870")
(setf (get mover_client::grid_num_vector :datatype-) "mover_client/grid_num_vector")
(setf (get mover_client::grid_num_vector :definition-)
      "grid_num[] numbered_grids

================================================================================
MSG: mover_client/grid_num
uint32 row
uint32 col
uint32 num

")



(provide :mover_client/grid_num_vector "93d1cb10c3e6ec95919ceb70fdb3e870")


