; Auto-generated. Do not edit!


(cl:in-package eve_msgs-srv)


;//! \htmlinclude Gear-request.msg.html

(cl:defclass <Gear-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gear-request (<Gear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Gear-request> is deprecated: use eve_msgs-srv:Gear-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Gear-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:mode-val is deprecated.  Use eve_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear-request>) ostream)
  "Serializes a message object of type '<Gear-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear-request>) istream)
  "Deserializes a message object of type '<Gear-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear-request>)))
  "Returns string type for a service object of type '<Gear-request>"
  "eve_msgs/GearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear-request)))
  "Returns string type for a service object of type 'Gear-request"
  "eve_msgs/GearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear-request>)))
  "Returns md5sum for a message object of type '<Gear-request>"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear-request)))
  "Returns md5sum for a message object of type 'Gear-request"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear-request>)))
  "Returns full string definition for message of type '<Gear-request>"
  (cl:format cl:nil "# 0	REVERSE~%# 1	NEUTRAL~%# 2	FORWARD~%# 3	BOOST~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear-request)))
  "Returns full string definition for message of type 'Gear-request"
  (cl:format cl:nil "# 0	REVERSE~%# 1	NEUTRAL~%# 2	FORWARD~%# 3	BOOST~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude Gear-response.msg.html

(cl:defclass <Gear-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Gear-response (<Gear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Gear-response> is deprecated: use eve_msgs-srv:Gear-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear-response>) ostream)
  "Serializes a message object of type '<Gear-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear-response>) istream)
  "Deserializes a message object of type '<Gear-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear-response>)))
  "Returns string type for a service object of type '<Gear-response>"
  "eve_msgs/GearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear-response)))
  "Returns string type for a service object of type 'Gear-response"
  "eve_msgs/GearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear-response>)))
  "Returns md5sum for a message object of type '<Gear-response>"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear-response)))
  "Returns md5sum for a message object of type 'Gear-response"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear-response>)))
  "Returns full string definition for message of type '<Gear-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear-response)))
  "Returns full string definition for message of type 'Gear-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gear)))
  'Gear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gear)))
  'Gear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear)))
  "Returns string type for a service object of type '<Gear>"
  "eve_msgs/Gear")