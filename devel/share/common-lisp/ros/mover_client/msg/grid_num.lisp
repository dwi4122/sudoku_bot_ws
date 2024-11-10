; Auto-generated. Do not edit!


(cl:in-package mover_client-msg)


;//! \htmlinclude grid_num.msg.html

(cl:defclass <grid_num> (roslisp-msg-protocol:ros-message)
  ((row
    :reader row
    :initarg :row
    :type cl:integer
    :initform 0)
   (col
    :reader col
    :initarg :col
    :type cl:integer
    :initform 0)
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass grid_num (<grid_num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grid_num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grid_num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mover_client-msg:<grid_num> is deprecated: use mover_client-msg:grid_num instead.")))

(cl:ensure-generic-function 'row-val :lambda-list '(m))
(cl:defmethod row-val ((m <grid_num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_client-msg:row-val is deprecated.  Use mover_client-msg:row instead.")
  (row m))

(cl:ensure-generic-function 'col-val :lambda-list '(m))
(cl:defmethod col-val ((m <grid_num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_client-msg:col-val is deprecated.  Use mover_client-msg:col instead.")
  (col m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <grid_num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_client-msg:num-val is deprecated.  Use mover_client-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grid_num>) ostream)
  "Serializes a message object of type '<grid_num>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grid_num>) istream)
  "Deserializes a message object of type '<grid_num>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grid_num>)))
  "Returns string type for a message object of type '<grid_num>"
  "mover_client/grid_num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grid_num)))
  "Returns string type for a message object of type 'grid_num"
  "mover_client/grid_num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grid_num>)))
  "Returns md5sum for a message object of type '<grid_num>"
  "6197da302b9cc329eda7a2732cc26877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grid_num)))
  "Returns md5sum for a message object of type 'grid_num"
  "6197da302b9cc329eda7a2732cc26877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grid_num>)))
  "Returns full string definition for message of type '<grid_num>"
  (cl:format cl:nil "uint32 row~%uint32 col~%uint32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grid_num)))
  "Returns full string definition for message of type 'grid_num"
  (cl:format cl:nil "uint32 row~%uint32 col~%uint32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grid_num>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grid_num>))
  "Converts a ROS message object to a list"
  (cl:list 'grid_num
    (cl:cons ':row (row msg))
    (cl:cons ':col (col msg))
    (cl:cons ':num (num msg))
))
