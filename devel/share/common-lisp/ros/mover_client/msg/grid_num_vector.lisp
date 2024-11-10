; Auto-generated. Do not edit!


(cl:in-package mover_client-msg)


;//! \htmlinclude grid_num_vector.msg.html

(cl:defclass <grid_num_vector> (roslisp-msg-protocol:ros-message)
  ((numbered_grids
    :reader numbered_grids
    :initarg :numbered_grids
    :type (cl:vector mover_client-msg:grid_num)
   :initform (cl:make-array 0 :element-type 'mover_client-msg:grid_num :initial-element (cl:make-instance 'mover_client-msg:grid_num))))
)

(cl:defclass grid_num_vector (<grid_num_vector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grid_num_vector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grid_num_vector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mover_client-msg:<grid_num_vector> is deprecated: use mover_client-msg:grid_num_vector instead.")))

(cl:ensure-generic-function 'numbered_grids-val :lambda-list '(m))
(cl:defmethod numbered_grids-val ((m <grid_num_vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_client-msg:numbered_grids-val is deprecated.  Use mover_client-msg:numbered_grids instead.")
  (numbered_grids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grid_num_vector>) ostream)
  "Serializes a message object of type '<grid_num_vector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'numbered_grids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'numbered_grids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grid_num_vector>) istream)
  "Deserializes a message object of type '<grid_num_vector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'numbered_grids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'numbered_grids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mover_client-msg:grid_num))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grid_num_vector>)))
  "Returns string type for a message object of type '<grid_num_vector>"
  "mover_client/grid_num_vector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grid_num_vector)))
  "Returns string type for a message object of type 'grid_num_vector"
  "mover_client/grid_num_vector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grid_num_vector>)))
  "Returns md5sum for a message object of type '<grid_num_vector>"
  "93d1cb10c3e6ec95919ceb70fdb3e870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grid_num_vector)))
  "Returns md5sum for a message object of type 'grid_num_vector"
  "93d1cb10c3e6ec95919ceb70fdb3e870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grid_num_vector>)))
  "Returns full string definition for message of type '<grid_num_vector>"
  (cl:format cl:nil "grid_num[] numbered_grids~%~%================================================================================~%MSG: mover_client/grid_num~%uint32 row~%uint32 col~%uint32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grid_num_vector)))
  "Returns full string definition for message of type 'grid_num_vector"
  (cl:format cl:nil "grid_num[] numbered_grids~%~%================================================================================~%MSG: mover_client/grid_num~%uint32 row~%uint32 col~%uint32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grid_num_vector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'numbered_grids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grid_num_vector>))
  "Converts a ROS message object to a list"
  (cl:list 'grid_num_vector
    (cl:cons ':numbered_grids (numbered_grids msg))
))
