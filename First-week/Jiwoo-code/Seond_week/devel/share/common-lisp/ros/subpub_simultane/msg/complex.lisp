; Auto-generated. Do not edit!


(cl:in-package subpub_simultane-msg)


;//! \htmlinclude complex.msg.html

(cl:defclass <complex> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type cl:float
    :initform 0.0)
   (imaginray
    :reader imaginray
    :initarg :imaginray
    :type cl:float
    :initform 0.0))
)

(cl:defclass complex (<complex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <complex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'complex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name subpub_simultane-msg:<complex> is deprecated: use subpub_simultane-msg:complex instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subpub_simultane-msg:real-val is deprecated.  Use subpub_simultane-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imaginray-val :lambda-list '(m))
(cl:defmethod imaginray-val ((m <complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subpub_simultane-msg:imaginray-val is deprecated.  Use subpub_simultane-msg:imaginray instead.")
  (imaginray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <complex>) ostream)
  "Serializes a message object of type '<complex>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imaginray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <complex>) istream)
  "Deserializes a message object of type '<complex>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imaginray) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<complex>)))
  "Returns string type for a message object of type '<complex>"
  "subpub_simultane/complex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'complex)))
  "Returns string type for a message object of type 'complex"
  "subpub_simultane/complex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<complex>)))
  "Returns md5sum for a message object of type '<complex>"
  "c61ad788bc5613f5fbb09120ab3bfc8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'complex)))
  "Returns md5sum for a message object of type 'complex"
  "c61ad788bc5613f5fbb09120ab3bfc8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<complex>)))
  "Returns full string definition for message of type '<complex>"
  (cl:format cl:nil "float32 real~%float32 imaginray~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'complex)))
  "Returns full string definition for message of type 'complex"
  (cl:format cl:nil "float32 real~%float32 imaginray~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <complex>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <complex>))
  "Converts a ROS message object to a list"
  (cl:list 'complex
    (cl:cons ':real (real msg))
    (cl:cons ':imaginray (imaginray msg))
))
