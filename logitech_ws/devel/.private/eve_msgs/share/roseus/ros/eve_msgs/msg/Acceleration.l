;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Acceleration)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Acceleration (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::ACCELERATION")
  (make-package "EVE_MSGS::ACCELERATION"))

(in-package "ROS")
;;//! \htmlinclude Acceleration.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eve_msgs::Acceleration
  :super ros::object
  :slots (_header _percentage ))

(defmethod eve_msgs::Acceleration
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _percentage (round __percentage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _percentage
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _percentage
       (write-byte _percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _percentage
     (setq _percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _percentage 127) (setq _percentage (- _percentage 256)))
   ;;
   self)
  )

(setf (get eve_msgs::Acceleration :md5sum-) "cef99679ab537b09bc625498c4d83b23")
(setf (get eve_msgs::Acceleration :datatype-) "eve_msgs/Acceleration")
(setf (get eve_msgs::Acceleration :definition-)
      "std_msgs/Header header

# Range 0 to 100, 100 is max acceleration
int8 percentage
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



(provide :eve_msgs/Acceleration "cef99679ab537b09bc625498c4d83b23")


