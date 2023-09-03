;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Status)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Status (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::STATUS")
  (make-package "EVE_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eve_msgs::Status
  :super ros::object
  :slots (_header _acceleration _brake _steering_angle _driving_mode _speed _gear _indicator _headlight _horn _wiper ))

(defmethod eve_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acceleration __acceleration) 0)
    ((:brake __brake) 0)
    ((:steering_angle __steering_angle) 0)
    ((:driving_mode __driving_mode) 0)
    ((:speed __speed) 0)
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
   (setq _driving_mode (round __driving_mode))
   (setq _speed (round __speed))
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
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
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
    ;; uint8 _driving_mode
    1
    ;; uint8 _speed
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
     ;; uint8 _driving_mode
       (write-byte _driving_mode s)
     ;; uint8 _speed
       (write-byte _speed s)
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
   ;; uint8 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get eve_msgs::Status :md5sum-) "2bd35173d866309f8624d2d2f6bcf3cb")
(setf (get eve_msgs::Status :datatype-) "eve_msgs/Status")
(setf (get eve_msgs::Status :definition-)
      "std_msgs/Header header

int8 acceleration

int8 brake

int8 steering_angle

# Driving Mode
uint8 driving_mode

# Speed
uint8 speed

# Gear
uint8 gear

# Indicator
uint8 indicator

# Headlight
uint8 headlight

# Horn
bool horn

# Wiper
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



(provide :eve_msgs/Status "2bd35173d866309f8624d2d2f6bcf3cb")


