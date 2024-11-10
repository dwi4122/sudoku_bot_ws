; Auto-generated. Do not edit!


(cl:in-package mover_arm_joints-srv)


;//! \htmlinclude move_and_confirm-request.msg.html

(cl:defclass <move_and_confirm-request> (roslisp-msg-protocol:ros-message)
  ((move
    :reader move
    :initarg :move
    :type cl:float
    :initform 0.0)
   (confirm
    :reader confirm
    :initarg :confirm
    :type cl:float
    :initform 0.0))
)

(cl:defclass move_and_confirm-request (<move_and_confirm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_and_confirm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_and_confirm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mover_arm_joints-srv:<move_and_confirm-request> is deprecated: use mover_arm_joints-srv:move_and_confirm-request instead.")))

(cl:ensure-generic-function 'move-val :lambda-list '(m))
(cl:defmethod move-val ((m <move_and_confirm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_arm_joints-srv:move-val is deprecated.  Use mover_arm_joints-srv:move instead.")
  (move m))

(cl:ensure-generic-function 'confirm-val :lambda-list '(m))
(cl:defmethod confirm-val ((m <move_and_confirm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mover_arm_joints-srv:confirm-val is deprecated.  Use mover_arm_joints-srv:confirm instead.")
  (confirm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_and_confirm-request>) ostream)
  "Serializes a message object of type '<move_and_confirm-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'move))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confirm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_and_confirm-request>) istream)
  "Deserializes a message object of type '<move_and_confirm-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'move) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confirm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_and_confirm-request>)))
  "Returns string type for a service object of type '<move_and_confirm-request>"
  "mover_arm_joints/move_and_confirmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_and_confirm-request)))
  "Returns string type for a service object of type 'move_and_confirm-request"
  "mover_arm_joints/move_and_confirmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_and_confirm-request>)))
  "Returns md5sum for a message object of type '<move_and_confirm-request>"
  "d3996e189f231d649f823398a7475c7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_and_confirm-request)))
  "Returns md5sum for a message object of type 'move_and_confirm-request"
  "d3996e189f231d649f823398a7475c7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_and_confirm-request>)))
  "Returns full string definition for message of type '<move_and_confirm-request>"
  (cl:format cl:nil "float64 move~%float64 confirm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_and_confirm-request)))
  "Returns full string definition for message of type 'move_and_confirm-request"
  (cl:format cl:nil "float64 move~%float64 confirm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_and_confirm-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_and_confirm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'move_and_confirm-request
    (cl:cons ':move (move msg))
    (cl:cons ':confirm (confirm msg))
))
;//! \htmlinclude move_and_confirm-response.msg.html

(cl:defclass <move_and_confirm-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass move_and_confirm-response (<move_and_confirm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_and_confirm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_and_confirm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mover_arm_joints-srv:<move_and_confirm-response> is deprecated: use mover_arm_joints-srv:move_and_confirm-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_and_confirm-response>) ostream)
  "Serializes a message object of type '<move_and_confirm-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_and_confirm-response>) istream)
  "Deserializes a message object of type '<move_and_confirm-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_and_confirm-response>)))
  "Returns string type for a service object of type '<move_and_confirm-response>"
  "mover_arm_joints/move_and_confirmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_and_confirm-response)))
  "Returns string type for a service object of type 'move_and_confirm-response"
  "mover_arm_joints/move_and_confirmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_and_confirm-response>)))
  "Returns md5sum for a message object of type '<move_and_confirm-response>"
  "d3996e189f231d649f823398a7475c7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_and_confirm-response)))
  "Returns md5sum for a message object of type 'move_and_confirm-response"
  "d3996e189f231d649f823398a7475c7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_and_confirm-response>)))
  "Returns full string definition for message of type '<move_and_confirm-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_and_confirm-response)))
  "Returns full string definition for message of type 'move_and_confirm-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_and_confirm-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_and_confirm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'move_and_confirm-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'move_and_confirm)))
  'move_and_confirm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'move_and_confirm)))
  'move_and_confirm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_and_confirm)))
  "Returns string type for a service object of type '<move_and_confirm>"
  "mover_arm_joints/move_and_confirm")