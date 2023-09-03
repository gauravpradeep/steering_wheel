; Auto-generated. Do not edit!


(cl:in-package eve_msgs-msg)


;//! \htmlinclude Steering.msg.html

(cl:defclass <Steering> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:fixnum
    :initform 0)
   (indicator
    :reader indicator
    :initarg :indicator
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Steering (<Steering>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Steering>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Steering)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-msg:<Steering> is deprecated: use eve_msgs-msg:Steering instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Steering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:header-val is deprecated.  Use eve_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <Steering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:steering_angle-val is deprecated.  Use eve_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'indicator-val :lambda-list '(m))
(cl:defmethod indicator-val ((m <Steering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:indicator-val is deprecated.  Use eve_msgs-msg:indicator instead.")
  (indicator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Steering>) ostream)
  "Serializes a message object of type '<Steering>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'steering_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'indicator)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Steering>) istream)
  "Deserializes a message object of type '<Steering>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_angle) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'indicator)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Steering>)))
  "Returns string type for a message object of type '<Steering>"
  "eve_msgs/Steering")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Steering)))
  "Returns string type for a message object of type 'Steering"
  "eve_msgs/Steering")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Steering>)))
  "Returns md5sum for a message object of type '<Steering>"
  "23a81283a703ac53f2cc24b4a11a4cf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Steering)))
  "Returns md5sum for a message object of type 'Steering"
  "23a81283a703ac53f2cc24b4a11a4cf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Steering>)))
  "Returns full string definition for message of type '<Steering>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range -40 to +40, +40 is maximum left turn~%int8 steering_angle~%~%# 0: Off, 1: Left, 2: Right~%uint8 indicator~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Steering)))
  "Returns full string definition for message of type 'Steering"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range -40 to +40, +40 is maximum left turn~%int8 steering_angle~%~%# 0: Off, 1: Left, 2: Right~%uint8 indicator~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Steering>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Steering>))
  "Converts a ROS message object to a list"
  (cl:list 'Steering
    (cl:cons ':header (header msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':indicator (indicator msg))
))
