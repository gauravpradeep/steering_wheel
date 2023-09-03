;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Gear)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Gear (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::GEAR")
  (make-package "EVE_MSGS::GEAR"))
(unless (find-package "EVE_MSGS::GEARREQUEST")
  (make-package "EVE_MSGS::GEARREQUEST"))
(unless (find-package "EVE_MSGS::GEARRESPONSE")
  (make-package "EVE_MSGS::GEARRESPONSE"))

(in-package "ROS")





(defclass eve_msgs::GearRequest
  :super ros::object
  :slots (_mode ))

(defmethod eve_msgs::GearRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass eve_msgs::GearResponse
  :super ros::object
  :slots ())

(defmethod eve_msgs::GearResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass eve_msgs::Gear
  :super ros::object
  :slots ())

(setf (get eve_msgs::Gear :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get eve_msgs::Gear :datatype-) "eve_msgs/Gear")
(setf (get eve_msgs::Gear :request) eve_msgs::GearRequest)
(setf (get eve_msgs::Gear :response) eve_msgs::GearResponse)

(defmethod eve_msgs::GearRequest
  (:response () (instance eve_msgs::GearResponse :init)))

(setf (get eve_msgs::GearRequest :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get eve_msgs::GearRequest :datatype-) "eve_msgs/GearRequest")
(setf (get eve_msgs::GearRequest :definition-)
      "# 0	REVERSE
# 1	NEUTRAL
# 2	FORWARD
# 3	BOOST

uint8 mode
---
")

(setf (get eve_msgs::GearResponse :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get eve_msgs::GearResponse :datatype-) "eve_msgs/GearResponse")
(setf (get eve_msgs::GearResponse :definition-)
      "# 0	REVERSE
# 1	NEUTRAL
# 2	FORWARD
# 3	BOOST

uint8 mode
---
")



(provide :eve_msgs/Gear "89b81386720be1cd0ce7a3953fcd1b19")


