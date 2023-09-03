; Auto-generated. Do not edit!


(cl:in-package eve_msgs-msg)


;//! \htmlinclude Control.msg.html

(cl:defclass <Control> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:fixnum
    :initform 0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (indicator
    :reader indicator
    :initarg :indicator
    :type cl:fixnum
    :initform 0)
   (headlight
    :reader headlight
    :initarg :headlight
    :type cl:fixnum
    :initform 0)
   (horn
    :reader horn
    :initarg :horn
    :type cl:boolean
    :initform cl:nil)
   (wiper
    :reader wiper
    :initarg :wiper
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Control (<Control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-msg:<Control> is deprecated: use eve_msgs-msg:Control instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:header-val is deprecated.  Use eve_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:acceleration-val is deprecated.  Use eve_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:brake-val is deprecated.  Use eve_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:steering_angle-val is deprecated.  Use eve_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:gear-val is deprecated.  Use eve_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'indicator-val :lambda-list '(m))
(cl:defmethod indicator-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:indicator-val is deprecated.  Use eve_msgs-msg:indicator instead.")
  (indicator m))

(cl:ensure-generic-function 'headlight-val :lambda-list '(m))
(cl:defmethod headlight-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:headlight-val is deprecated.  Use eve_msgs-msg:headlight instead.")
  (headlight m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:horn-val is deprecated.  Use eve_msgs-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'wiper-val :lambda-list '(m))
(cl:defmethod wiper-val ((m <Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-msg:wiper-val is deprecated.  Use eve_msgs-msg:wiper instead.")
  (wiper m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Control>)))
    "Constants for message type '<Control>"
  '((:EVE_REVERSE_GEAR . 0)
    (:EVE_NEUTRAL_GEAR . 1)
    (:EVE_FORWARD_GEAR . 2)
    (:EVE_BOOST_GEAR . 3)
    (:EVE_INDICATOR_OFF . 0)
    (:EVE_INDICATOR_LEFT . 1)
    (:EVE_INDICATOR_RIGHT . 2)
    (:EVE_INDICATOR_HAZARD . 3)
    (:EVE_BEAM_OFF . 0)
    (:EVE_LOW_BEAM . 1)
    (:EVE_HIGH_BEAM . 2)
    (:EVE_WIPER_OFF . 0)
    (:EVE_WIPER_INTERMITTENT . 1)
    (:EVE_WIPER_CONTINUOUS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Control)))
    "Constants for message type 'Control"
  '((:EVE_REVERSE_GEAR . 0)
    (:EVE_NEUTRAL_GEAR . 1)
    (:EVE_FORWARD_GEAR . 2)
    (:EVE_BOOST_GEAR . 3)
    (:EVE_INDICATOR_OFF . 0)
    (:EVE_INDICATOR_LEFT . 1)
    (:EVE_INDICATOR_RIGHT . 2)
    (:EVE_INDICATOR_HAZARD . 3)
    (:EVE_BEAM_OFF . 0)
    (:EVE_LOW_BEAM . 1)
    (:EVE_HIGH_BEAM . 2)
    (:EVE_WIPER_OFF . 0)
    (:EVE_WIPER_INTERMITTENT . 1)
    (:EVE_WIPER_CONTINUOUS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control>) ostream)
  "Serializes a message object of type '<Control>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'acceleration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steering_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'indicator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control>) istream)
  "Deserializes a message object of type '<Control>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acceleration) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_angle) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'indicator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlight)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control>)))
  "Returns string type for a message object of type '<Control>"
  "eve_msgs/Control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control)))
  "Returns string type for a message object of type 'Control"
  "eve_msgs/Control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control>)))
  "Returns md5sum for a message object of type '<Control>"
  "ab85032e3c290005bc65df0c69df38f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control)))
  "Returns md5sum for a message object of type 'Control"
  "ab85032e3c290005bc65df0c69df38f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control>)))
  "Returns full string definition for message of type '<Control>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range 0 to 100, 100 is max acceleration~%int8 acceleration~%# Range 0 to 100, 100 is max brake~%int8 brake~%# Range -40 to +40, +40 is maximum left turn~%int8 steering_angle~%~%# Gear~%uint8 EVE_REVERSE_GEAR=0~%uint8 EVE_NEUTRAL_GEAR=1~%uint8 EVE_FORWARD_GEAR=2~%uint8 EVE_BOOST_GEAR=3~%~%uint8 gear~%~%# Indicator~%uint8 EVE_INDICATOR_OFF=0~%uint8 EVE_INDICATOR_LEFT=1~%uint8 EVE_INDICATOR_RIGHT=2~%uint8 EVE_INDICATOR_HAZARD =3~%~%uint8 indicator~%~%# Headlight~%uint8 EVE_BEAM_OFF=0~%uint8 EVE_LOW_BEAM=1~%uint8 EVE_HIGH_BEAM=2~%~%uint8 headlight~%~%# Horn~%bool horn~%~%# Wiper~%uint8 EVE_WIPER_OFF=0~%uint8 EVE_WIPER_INTERMITTENT=1~%uint8 EVE_WIPER_CONTINUOUS=2~%~%uint8 wiper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control)))
  "Returns full string definition for message of type 'Control"
  (cl:format cl:nil "std_msgs/Header header~%~%# Range 0 to 100, 100 is max acceleration~%int8 acceleration~%# Range 0 to 100, 100 is max brake~%int8 brake~%# Range -40 to +40, +40 is maximum left turn~%int8 steering_angle~%~%# Gear~%uint8 EVE_REVERSE_GEAR=0~%uint8 EVE_NEUTRAL_GEAR=1~%uint8 EVE_FORWARD_GEAR=2~%uint8 EVE_BOOST_GEAR=3~%~%uint8 gear~%~%# Indicator~%uint8 EVE_INDICATOR_OFF=0~%uint8 EVE_INDICATOR_LEFT=1~%uint8 EVE_INDICATOR_RIGHT=2~%uint8 EVE_INDICATOR_HAZARD =3~%~%uint8 indicator~%~%# Headlight~%uint8 EVE_BEAM_OFF=0~%uint8 EVE_LOW_BEAM=1~%uint8 EVE_HIGH_BEAM=2~%~%uint8 headlight~%~%# Horn~%bool horn~%~%# Wiper~%uint8 EVE_WIPER_OFF=0~%uint8 EVE_WIPER_INTERMITTENT=1~%uint8 EVE_WIPER_CONTINUOUS=2~%~%uint8 wiper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control>))
  "Converts a ROS message object to a list"
  (cl:list 'Control
    (cl:cons ':header (header msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':indicator (indicator msg))
    (cl:cons ':headlight (headlight msg))
    (cl:cons ':horn (horn msg))
    (cl:cons ':wiper (wiper msg))
))
