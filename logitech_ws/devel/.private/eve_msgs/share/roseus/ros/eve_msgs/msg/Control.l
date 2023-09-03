;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Control)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Control (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::CONTROL")
  (make-package "EVE_MSGS::CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Control.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*EVE_REVERSE_GEAR*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_REVERSE_GEAR* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_REVERSE_GEAR* 0)
(intern "*EVE_NEUTRAL_GEAR*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_NEUTRAL_GEAR* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_NEUTRAL_GEAR* 1)
(intern "*EVE_FORWARD_GEAR*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_FORWARD_GEAR* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_FORWARD_GEAR* 2)
(intern "*EVE_BOOST_GEAR*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_BOOST_GEAR* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_BOOST_GEAR* 3)
(intern "*EVE_INDICATOR_OFF*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_INDICATOR_OFF* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_INDICATOR_OFF* 0)
(intern "*EVE_INDICATOR_LEFT*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_INDICATOR_LEFT* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_INDICATOR_LEFT* 1)
(intern "*EVE_INDICATOR_RIGHT*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_INDICATOR_RIGHT* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_INDICATOR_RIGHT* 2)
(intern "*EVE_INDICATOR_HAZARD*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_INDICATOR_HAZARD* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_INDICATOR_HAZARD* 3)
(intern "*EVE_BEAM_OFF*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_BEAM_OFF* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_BEAM_OFF* 0)
(intern "*EVE_LOW_BEAM*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_LOW_BEAM* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_LOW_BEAM* 1)
(intern "*EVE_HIGH_BEAM*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_HIGH_BEAM* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_HIGH_BEAM* 2)
(intern "*EVE_WIPER_OFF*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_WIPER_OFF* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_WIPER_OFF* 0)
(intern "*EVE_WIPER_INTERMITTENT*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_WIPER_INTERMITTENT* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_WIPER_INTERMITTENT* 1)
(intern "*EVE_WIPER_CONTINUOUS*" (find-package "EVE_MSGS::CONTROL"))
(shadow '*EVE_WIPER_CONTINUOUS* (find-package "EVE_MSGS::CONTROL"))
(defconstant eve_msgs::Control::*EVE_WIPER_CONTINUOUS* 2)
(defclass eve_msgs::Control
  :super ros::object
  :slots (_header _acceleration _brake _steering_angle _gear _indicator _headlight _horn _wiper ))

(defmethod eve_msgs::Control
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acceleration __acceleration) 0)
    ((:brake __brake) 0)
    ((:steering_angle __steering_angle) 0)
    ((:gear __gear) 0)
    ((:indicator __indicator) 0)
    ((:headlight __headlight) 0)
    ((:horn __horn) nil)
    ((:wiper __wiper) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acceleration (round __acceleration))
   (setq _brake (round __brake))
   (setq _steering_angle (round __steering_angle))
   (setq _gear (round __gear))
   (setq _indicator (round __indicator))
   (setq _headlight (round __headlight))
   (setq _horn __horn)
   (setq _wiper (round __wiper))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:indicator
   (&optional __indicator)
   (if __indicator (setq _indicator __indicator)) _indicator)
  (:headlight
   (&optional __headlight)
   (if __headlight (setq _headlight __headlight)) _headlight)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:wiper
   (&optional __wiper)
   (if __wiper (setq _wiper __wiper)) _wiper)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _acceleration
    1
    ;; int8 _brake
    1
    ;; int8 _steering_angle
    1
    ;; uint8 _gear
    1
    ;; uint8 _indicator
    1
    ;; uint8 _headlight
    1
    ;; bool _horn
    1
    ;; uint8 _wiper
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _acceleration
       (write-byte _acceleration s)
     ;; int8 _brake
       (write-byte _brake s)
     ;; int8 _steering_angle
       (write-byte _steering_angle s)
     ;; uint8 _gear
       (write-byte _gear s)
     ;; uint8 _indicator
       (write-byte _indicator s)
     ;; uint8 _headlight
       (write-byte _headlight s)
     ;; bool _horn
       (if _horn (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _wiper
       (write-byte _wiper s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _acceleration
     (setq _acceleration (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _acceleration 127) (setq _acceleration (- _acceleration 256)))
   ;; int8 _brake
     (setq _brake (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _brake 127) (setq _brake (- _brake 256)))
   ;; int8 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _steering_angle 127) (setq _steering_angle (- _steering_angle 256)))
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _indicator
     (setq _indicator (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _headlight
     (setq _headlight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _horn
     (setq _horn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _wiper
     (setq _wiper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get eve_msgs::Control :md5sum-) "ab85032e3c290005bc65df0c69df38f7")
(setf (get eve_msgs::Control :datatype-) "eve_msgs/Control")
(setf (get eve_msgs::Control :definition-)
      "std_msgs/Header header

# Range 0 to 100, 100 is max acceleration
int8 acceleration
# Range 0 to 100, 100 is max brake
int8 brake
# Range -40 to +40, +40 is maximum left turn
int8 steering_angle

# Gear
uint8 EVE_REVERSE_GEAR=0
uint8 EVE_NEUTRAL_GEAR=1
uint8 EVE_FORWARD_GEAR=2
uint8 EVE_BOOST_GEAR=3

uint8 gear

# Indicator
uint8 EVE_INDICATOR_OFF=0
uint8 EVE_INDICATOR_LEFT=1
uint8 EVE_INDICATOR_RIGHT=2
uint8 EVE_INDICATOR_HAZARD =3

uint8 indicator

# Headlight
uint8 EVE_BEAM_OFF=0
uint8 EVE_LOW_BEAM=1
uint8 EVE_HIGH_BEAM=2

uint8 headlight

# Horn
bool horn

# Wiper
uint8 EVE_WIPER_OFF=0
uint8 EVE_WIPER_INTERMITTENT=1
uint8 EVE_WIPER_CONTINUOUS=2

uint8 wiper

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :eve_msgs/Control "ab85032e3c290005bc65df0c69df38f7")

