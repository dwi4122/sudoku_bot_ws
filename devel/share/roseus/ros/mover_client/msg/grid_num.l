;; Auto-generated. Do not edit!


(when (boundp 'mover_client::grid_num)
  (if (not (find-package "MOVER_CLIENT"))
    (make-package "MOVER_CLIENT"))
  (shadow 'grid_num (find-package "MOVER_CLIENT")))
(unless (find-package "MOVER_CLIENT::GRID_NUM")
  (make-package "MOVER_CLIENT::GRID_NUM"))

(in-package "ROS")
;;//! \htmlinclude grid_num.msg.html


(defclass mover_client::grid_num
  :super ros::object
  :slots (_row _col _num ))

(defmethod mover_client::grid_num
  (:init
   (&key
    ((:row __row) 0)
    ((:col __col) 0)
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _row (round __row))
   (setq _col (round __col))
   (setq _num (round __num))
   self)
  (:row
   (&optional __row)
   (if __row (setq _row __row)) _row)
  (:col
   (&optional __col)
   (if __col (setq _col __col)) _col)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; uint32 _row
    4
    ;; uint32 _col
    4
    ;; uint32 _num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _row
       (write-long _row s)
     ;; uint32 _col
       (write-long _col s)
     ;; uint32 _num
       (write-long _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _row
     (setq _row (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _col
     (setq _col (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mover_client::grid_num :md5sum-) "6197da302b9cc329eda7a2732cc26877")
(setf (get mover_client::grid_num :datatype-) "mover_client/grid_num")
(setf (get mover_client::grid_num :definition-)
      "uint32 row
uint32 col
uint32 num

")



(provide :mover_client/grid_num "6197da302b9cc329eda7a2732cc26877")


