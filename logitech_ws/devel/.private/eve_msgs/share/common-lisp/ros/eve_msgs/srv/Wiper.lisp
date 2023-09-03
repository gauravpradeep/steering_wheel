; Auto-generated. Do not edit!


(cl:in-package eve_msgs-srv)


;//! \htmlinclude Wiper-request.msg.html

(cl:defclass <Wiper-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Wiper-request (<Wiper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wiper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wiper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Wiper-request> is deprecated: use eve_msgs-srv:Wiper-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Wiper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:state-val is deprecated.  Use eve_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wiper-request>) ostream)
  "Serializes a message object of type '<Wiper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wiper-request>) istream)
  "Deserializes a message object of type '<Wiper-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wiper-request>)))
  "Returns string type for a service object of type '<Wiper-request>"
  "eve_msgs/WiperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wiper-request)))
  "Returns string type for a service object of type 'Wiper-request"
  "eve_msgs/WiperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wiper-request>)))
  "Returns md5sum for a message object of type '<Wiper-request>"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wiper-request)))
  "Returns md5sum for a message object of type 'Wiper-request"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wiper-request>)))
  "Returns full string definition for message of type '<Wiper-request>"
  (cl:format cl:nil "# OFF~%# INTERMITTENT~%# CONTINUOUS~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wiper-request)))
  "Returns full string definition for message of type 'Wiper-request"
  (cl:format cl:nil "# OFF~%# INTERMITTENT~%# CONTINUOUS~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wiper-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wiper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Wiper-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Wiper-response.msg.html

(cl:defclass <Wiper-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Wiper-response (<Wiper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wiper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wiper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Wiper-response> is deprecated: use eve_msgs-srv:Wiper-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wiper-response>) ostream)
  "Serializes a message object of type '<Wiper-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wiper-response>) istream)
  "Deserializes a message object of type '<Wiper-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wiper-response>)))
  "Returns string type for a service object of type '<Wiper-response>"
  "eve_msgs/WiperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wiper-response)))
  "Returns string type for a service object of type 'Wiper-response"
  "eve_msgs/WiperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wiper-response>)))
  "Returns md5sum for a message object of type '<Wiper-response>"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wiper-response)))
  "Returns md5sum for a message object of type 'Wiper-response"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wiper-response>)))
  "Returns full string definition for message of type '<Wiper-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wiper-response)))
  "Returns full string definition for message of type 'Wiper-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wiper-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wiper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Wiper-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Wiper)))
  'Wiper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Wiper)))
  'Wiper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wiper)))
  "Returns string type for a service object of type '<Wiper>"
  "eve_msgs/Wiper")