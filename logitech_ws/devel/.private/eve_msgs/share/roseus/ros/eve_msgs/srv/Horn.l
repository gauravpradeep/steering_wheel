;; Auto-generated. Do not edit!


(when (boundp 'eve_msgs::Horn)
  (if (not (find-package "EVE_MSGS"))
    (make-package "EVE_MSGS"))
  (shadow 'Horn (find-package "EVE_MSGS")))
(unless (find-package "EVE_MSGS::HORN")
  (make-package "EVE_MSGS::HORN"))
(unless (find-package "EVE_MSGS::HORNREQUEST")
  (make-package "EVE_MSGS::HORNREQUEST"))
(unless (find-package "EVE_MSGS::HORNRESPONSE")
  (make-package "EVE_MSGS::HORNRESPONSE"))

(in-package "ROS")





(defclass eve_msgs::HornRequest
  :super ros::object
  :slots (_state ))

(defmethod eve_msgs::HornRequest
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass eve_msgs::HornResponse
  :super ros::object
  :slots ())

(defmethod eve_msgs::HornResponse
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

(defclass eve_msgs::Horn
  :super ros::object
  :slots ())

(setf (get eve_msgs::Horn :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get eve_msgs::Horn :datatype-) "eve_msgs/Horn")
(setf (get eve_msgs::Horn :request) eve_msgs::HornRequest)
(setf (get eve_msgs::Horn :response) eve_msgs::HornResponse)

(defmethod eve_msgs::HornRequest
  (:response () (instance eve_msgs::HornResponse :init)))

(setf (get eve_msgs::HornRequest :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get eve_msgs::HornRequest :datatype-) "eve_msgs/HornRequest")
(setf (get eve_msgs::HornRequest :definition-)
      "bool state
---
")

(setf (get eve_msgs::HornResponse :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get eve_msgs::HornResponse :datatype-) "eve_msgs/HornResponse")
(setf (get eve_msgs::HornResponse :definition-)
      "bool state
---
")



(provide :eve_msgs/Horn "001fde3cab9e313a150416ff09c08ee4")


