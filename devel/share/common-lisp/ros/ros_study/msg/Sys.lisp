; Auto-generated. Do not edit!


(cl:in-package ros_study-msg)


;//! \htmlinclude Sys.msg.html

(cl:defclass <Sys> (roslisp-msg-protocol:ros-message)
  ((cpu_percent
    :reader cpu_percent
    :initarg :cpu_percent
    :type cl:float
    :initform 0.0)
   (virtual_memory_percent
    :reader virtual_memory_percent
    :initarg :virtual_memory_percent
    :type cl:float
    :initform 0.0)
   (disk_free
    :reader disk_free
    :initarg :disk_free
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Sys (<Sys>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sys>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sys)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_study-msg:<Sys> is deprecated: use ros_study-msg:Sys instead.")))

(cl:ensure-generic-function 'cpu_percent-val :lambda-list '(m))
(cl:defmethod cpu_percent-val ((m <Sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_study-msg:cpu_percent-val is deprecated.  Use ros_study-msg:cpu_percent instead.")
  (cpu_percent m))

(cl:ensure-generic-function 'virtual_memory_percent-val :lambda-list '(m))
(cl:defmethod virtual_memory_percent-val ((m <Sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_study-msg:virtual_memory_percent-val is deprecated.  Use ros_study-msg:virtual_memory_percent instead.")
  (virtual_memory_percent m))

(cl:ensure-generic-function 'disk_free-val :lambda-list '(m))
(cl:defmethod disk_free-val ((m <Sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_study-msg:disk_free-val is deprecated.  Use ros_study-msg:disk_free instead.")
  (disk_free m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sys>) ostream)
  "Serializes a message object of type '<Sys>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'virtual_memory_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'disk_free)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sys>) istream)
  "Deserializes a message object of type '<Sys>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'virtual_memory_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'disk_free)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sys>)))
  "Returns string type for a message object of type '<Sys>"
  "ros_study/Sys")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sys)))
  "Returns string type for a message object of type 'Sys"
  "ros_study/Sys")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sys>)))
  "Returns md5sum for a message object of type '<Sys>"
  "c167532159c4742928a4543c7c3dd1fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sys)))
  "Returns md5sum for a message object of type 'Sys"
  "c167532159c4742928a4543c7c3dd1fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sys>)))
  "Returns full string definition for message of type '<Sys>"
  (cl:format cl:nil "float32 cpu_percent~%float32 virtual_memory_percent~%uint8 disk_free~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sys)))
  "Returns full string definition for message of type 'Sys"
  (cl:format cl:nil "float32 cpu_percent~%float32 virtual_memory_percent~%uint8 disk_free~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sys>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sys>))
  "Converts a ROS message object to a list"
  (cl:list 'Sys
    (cl:cons ':cpu_percent (cpu_percent msg))
    (cl:cons ':virtual_memory_percent (virtual_memory_percent msg))
    (cl:cons ':disk_free (disk_free msg))
))
