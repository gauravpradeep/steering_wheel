; Auto-generated. Do not edit!


(cl:in-package eve_msgs-srv)


;//! \htmlinclude Headlight-request.msg.html

(cl:defclass <Headlight-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Headlight-request (<Headlight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Headlight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Headlight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Headlight-request> is deprecated: use eve_msgs-srv:Headlight-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Headlight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:state-val is deprecated.  Use eve_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Headlight-request>) ostream)
  "Serializes a message object of type '<Headlight-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Headlight-request>) istream)
  "Deserializes a message object of type '<Headlight-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Headlight-request>)))
  "Returns string type for a service object of type '<Headlight-request>"
  "eve_msgs/HeadlightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Headlight-request)))
  "Returns string type for a service object of type 'Headlight-request"
  "eve_msgs/HeadlightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Headlight-request>)))
  "Returns md5sum for a message object of type '<Headlight-request>"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Headlight-request)))
  "Returns md5sum for a message object of type 'Headlight-request"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Headlight-request>)))
  "Returns full string definition for message of type '<Headlight-request>"
  (cl:format cl:nil "# 0 OFF~%# 1 LOW BEAM~%# 2 HIGH BEAM~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Headlight-request)))
  "Returns full string definition for message of type 'Headlight-request"
  (cl:format cl:nil "# 0 OFF~%# 1 LOW BEAM~%# 2 HIGH BEAM~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Headlight-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Headlight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Headlight-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Headlight-response.msg.html

(cl:defclass <Headlight-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Headlight-response (<Headlight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Headlight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Headlight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Headlight-response> is deprecated: use eve_msgs-srv:Headlight-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Headlight-response>) ostream)
  "Serializes a message object of type '<Headlight-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Headlight-response>) istream)
  "Deserializes a message object of type '<Headlight-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Headlight-response>)))
  "Returns string type for a service object of type '<Headlight-response>"
  "eve_msgs/HeadlightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Headlight-response)))
  "Returns string type for a service object of type 'Headlight-response"
  "eve_msgs/HeadlightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Headlight-response>)))
  "Returns md5sum for a message object of type '<Headlight-response>"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Headlight-response)))
  "Returns md5sum for a message object of type 'Headlight-response"
  "800f34bc468def1d86e2d42bea5648c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Headlight-response>)))
  "Returns full string definition for message of type '<Headlight-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Headlight-response)))
  "Returns full string definition for message of type 'Headlight-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Headlight-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Headlight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Headlight-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Headlight)))
  'Headlight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Headlight)))
  'Headlight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Headlight)))
  "Returns string type for a service object of type '<Headlight>"
  "eve_msgs/Headlight")