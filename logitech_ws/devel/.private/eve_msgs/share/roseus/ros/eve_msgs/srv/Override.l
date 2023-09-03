;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Override)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Override (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::OVERRIDE")
  (make-package "EVE_MSGS::OVERRIDE"))
(unless (find-package "EVE_MSGS::OVERRIDEREQUEST")
  (make-package "EVE_MSGS::OVERRIDEREQUEST"))
(unless (find-package "EVE_MSGS::OVERRIDERESPONSE")
  (make-package "EVE_MSGS::OVERRIDERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass eve_msgs::OverrideRequest
  :super ros::object
  :slots (_controller _type ))

(defmethod eve_msgs::OverrideRequest
  (:init
   (&key
    ((:controller __controller) (instance std_msgs::String :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _controller __controller)
   (setq _type (round __type))
   self)
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _controller
    (send _controller :serialization-length)
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _controller
       (send _controller :serialize s)
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _controller
     (send _controller :deserialize buf ptr-) (incf ptr- (send _controller :serialization-length))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(defclass eve_msgs::OverrideResponse
  :super ros::object
  :slots (_status ))

(defmethod eve_msgs::OverrideResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass eve_msgs::Override
  :super ros::object
  :slots ())

(setf (get eve_msgs::Override :md5sum-) "29cdd02e1e856c7f99b046d6ef4a7a75")
(setf (get eve_msgs::Override :datatype-) "eve_msgs/Override")
(setf (get eve_msgs::Override :request) eve_msgs::OverrideRequest)
(setf (get eve_msgs::Override :response) eve_msgs::OverrideResponse)

(defmethod eve_msgs::OverrideRequest
  (:response () (instance eve_msgs::OverrideResponse :init)))

(setf (get eve_msgs::OverrideRequest :md5sum-) "29cdd02e1e856c7f99b046d6ef4a7a75")
(setf (get eve_msgs::OverrideRequest :datatype-) "eve_msgs/OverrideRequest")
(setf (get eve_msgs::OverrideRequest :definition-)
      "std_msgs/String controller

# 0 REQUEST_CONTROL	(Controller to Priority Switcher)
# 1 RELEASE_CONTROL	(Priority Switcher to Controller)
# 2 RESUME_CONTROL	(Priority Switcher to Controller)
# 3 CONTROLLER_EXIT	(Controller to Priority Switcher)

int8 type

================================================================================
MSG: std_msgs/String
string data
---
bool status
")

(setf (get eve_msgs::OverrideResponse :md5sum-) "29cdd02e1e856c7f99b046d6ef4a7a75")
(setf (get eve_msgs::OverrideResponse :datatype-) "eve_msgs/OverrideResponse")
(setf (get eve_msgs::OverrideResponse :definition-)
      "std_msgs/String controller

# 0 REQUEST_CONTROL	(Controller to Priority Switcher)
# 1 RELEASE_CONTROL	(Priority Switcher to Controller)
# 2 RESUME_CONTROL	(Priority Switcher to Controller)
# 3 CONTROLLER_EXIT	(Controller to Priority Switcher)

int8 type

================================================================================
MSG: std_msgs/String
string data
---
bool status
")



(provide :eve_msgs/Override "29cdd02e1e856c7f99b046d6ef4a7a75")


