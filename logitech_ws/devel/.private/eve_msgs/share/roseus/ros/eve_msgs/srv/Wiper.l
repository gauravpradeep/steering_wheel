;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Wiper)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Wiper (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::WIPER")
  (make-package "EVE_MSGS::WIPER"))
(unless (find-package "EVE_MSGS::WIPERREQUEST")
  (make-package "EVE_MSGS::WIPERREQUEST"))
(unless (find-package "EVE_MSGS::WIPERRESPONSE")
  (make-package "EVE_MSGS::WIPERRESPONSE"))

(in-package "ROS")





(defclass eve_msgs::WiperRequest
  :super ros::object
  :slots (_state ))

(defmethod eve_msgs::WiperRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass eve_msgs::WiperResponse
  :super ros::object
  :slots ())

(defmethod eve_msgs::WiperResponse
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

(defclass eve_msgs::Wiper
  :super ros::object
  :slots ())

(setf (get eve_msgs::Wiper :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::Wiper :datatype-) "eve_msgs/Wiper")
(setf (get eve_msgs::Wiper :request) eve_msgs::WiperRequest)
(setf (get eve_msgs::Wiper :response) eve_msgs::WiperResponse)

(defmethod eve_msgs::WiperRequest
  (:response () (instance eve_msgs::WiperResponse :init)))

(setf (get eve_msgs::WiperRequest :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::WiperRequest :datatype-) "eve_msgs/WiperRequest")
(setf (get eve_msgs::WiperRequest :definition-)
      "# OFF
# INTERMITTENT
# CONTINUOUS

uint8 state
---
")

(setf (get eve_msgs::WiperResponse :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::WiperResponse :datatype-) "eve_msgs/WiperResponse")
(setf (get eve_msgs::WiperResponse :definition-)
      "# OFF
# INTERMITTENT
# CONTINUOUS

uint8 state
---
")



(provide :eve_msgs/Wiper "800f34bc468def1d86e2d42bea5648c0")


