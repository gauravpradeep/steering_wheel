; Auto-generated. Do not edit!


(cl:in-package eve_msgs-msg)


;//! \htmlinclude Brake.msg.html

(cl:defclass <Brake> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Brake (<Brake>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Brake>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Brake)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-msg:<Brake> is deprecated: use eve_msgs-msg:Brake instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Brake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:header-val is deprecated.  Use eve_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <Brake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:percentage-val is deprecated.  Use eve_msgs-msg:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Brake>) ostream)
  "Serializes a message object of type '<Brake>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Brake>) istream)
  "Deserializes a message object of type '<Brake>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Brake>)))
  "Returns string type for a message object of type '<Brake>"
  "eve_msgs/Brake")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Brake)))
  "Returns string type for a message object of type 'Brake"
  "eve_msgs/Brake")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Brake>)))
  "Returns md5sum for a message object of type '<Brake>"
  "cef99679ab537b09bc625498c4d83b23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Brake)))
  "Returns md5sum for a message object of type 'Brake"
  "cef99679ab537b09bc625498c4d83b23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Brake>)))
  "Returns full string definition for message of type '<Brake>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range 0 to 100, 100 is max brake~%int8 percentage~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Brake)))
  "Returns full string definition for message of type 'Brake"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range 0 to 100, 100 is max brake~%int8 percentage~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Brake>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Brake>))
  "Converts a ROS message object to a list"
  (cl:list 'Brake
    (cl:cons ':header (header msg))
    (cl:cons ':percentage (percentage msg))
))
