;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Headlight)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Headlight (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::HEADLIGHT")
  (make-package "EVE_MSGS::HEADLIGHT"))
(unless (find-package "EVE_MSGS::HEADLIGHTREQUEST")
  (make-package "EVE_MSGS::HEADLIGHTREQUEST"))
(unless (find-package "EVE_MSGS::HEADLIGHTRESPONSE")
  (make-package "EVE_MSGS::HEADLIGHTRESPONSE"))

(in-package "ROS")





(defclass eve_msgs::HeadlightRequest
  :super ros::object
  :slots (_state ))

(defmethod eve_msgs::HeadlightRequest
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

(defclass eve_msgs::HeadlightResponse
  :super ros::object
  :slots ())

(defmethod eve_msgs::HeadlightResponse
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

(defclass eve_msgs::Headlight
  :super ros::object
  :slots ())

(setf (get eve_msgs::Headlight :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::Headlight :datatype-) "eve_msgs/Headlight")
(setf (get eve_msgs::Headlight :request) eve_msgs::HeadlightRequest)
(setf (get eve_msgs::Headlight :response) eve_msgs::HeadlightResponse)

(defmethod eve_msgs::HeadlightRequest
  (:response () (instance eve_msgs::HeadlightResponse :init)))

(setf (get eve_msgs::HeadlightRequest :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::HeadlightRequest :datatype-) "eve_msgs/HeadlightRequest")
(setf (get eve_msgs::HeadlightRequest :definition-)
      "# 0 OFF
# 1 LOW BEAM
# 2 HIGH BEAM

uint8 state
---
")

(setf (get eve_msgs::HeadlightResponse :md5sum-) "800f34bc468def1d86e2d42bea5648c0")
(setf (get eve_msgs::HeadlightResponse :datatype-) "eve_msgs/HeadlightResponse")
(setf (get eve_msgs::HeadlightResponse :definition-)
      "# 0 OFF
# 1 LOW BEAM
# 2 HIGH BEAM

uint8 state
---
")



(provide :eve_msgs/Headlight "800f34bc468def1d86e2d42bea5648c0")


