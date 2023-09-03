;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Steering)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Steering (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::STEERING")
  (make-package "EVE_MSGS::STEERING"))

(in-package "ROS")
;;//! \htmlinclude Steering.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eve_msgs::Steering
  :super ros::object
  :slots (_header _steering_angle _indicator ))

(defmethod eve_msgs::Steering
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_angle __steering_angle) 0)
    ((:indicator __indicator) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_angle (round __steering_angle))
   (setq _indicator (round __indicator))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:indicator
   (&optional __indicator)
   (if __indicator (setq _indicator __indicator)) _indicator)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _steering_angle
    1
    ;; uint8 _indicator
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _steering_angle
       (write-byte _steering_angle s)
     ;; uint8 _indicator
       (write-byte _indicator s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _steering_angle 127) (setq _steering_angle (- _steering_angle 256)))
   ;; uint8 _indicator
     (setq _indicator (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get eve_msgs::Steering :md5sum-) "23a81283a703ac53f2cc24b4a11a4cf0")
(setf (get eve_msgs::Steering :datatype-) "eve_msgs/Steering")
(setf (get eve_msgs::Steering :definition-)
      "std_msgs/Header header

# Range -40 to +40, +40 is maximum left turn
int8 steering_angle

# 0: Off, 1: Left, 2: Right
uint8 indicator
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



(provide :eve_msgs/Steering "23a81283a703ac53f2cc24b4a11a4cf0")


