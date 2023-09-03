; Auto-generated. Do not edit!


(cl:in-package eve_msgs-srv)


;//! \htmlinclude Horn-request.msg.html

(cl:defclass <Horn-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Horn-request (<Horn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Horn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Horn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Horn-request> is deprecated: use eve_msgs-srv:Horn-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Horn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:state-val is deprecated.  Use eve_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Horn-request>) ostream)
  "Serializes a message object of type '<Horn-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Horn-request>) istream)
  "Deserializes a message object of type '<Horn-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Horn-request>)))
  "Returns string type for a service object of type '<Horn-request>"
  "eve_msgs/HornRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Horn-request)))
  "Returns string type for a service object of type 'Horn-request"
  "eve_msgs/HornRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Horn-request>)))
  "Returns md5sum for a message object of type '<Horn-request>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Horn-request)))
  "Returns md5sum for a message object of type 'Horn-request"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Horn-request>)))
  "Returns full string definition for message of type '<Horn-request>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Horn-request)))
  "Returns full string definition for message of type 'Horn-request"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Horn-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Horn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Horn-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Horn-response.msg.html

(cl:defclass <Horn-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Horn-response (<Horn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Horn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Horn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Horn-response> is deprecated: use eve_msgs-srv:Horn-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Horn-response>) ostream)
  "Serializes a message object of type '<Horn-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Horn-response>) istream)
  "Deserializes a message object of type '<Horn-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Horn-response>)))
  "Returns string type for a service object of type '<Horn-response>"
  "eve_msgs/HornResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Horn-response)))
  "Returns string type for a service object of type 'Horn-response"
  "eve_msgs/HornResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Horn-response>)))
  "Returns md5sum for a message object of type '<Horn-response>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Horn-response)))
  "Returns md5sum for a message object of type 'Horn-response"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Horn-response>)))
  "Returns full string definition for message of type '<Horn-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Horn-response)))
  "Returns full string definition for message of type 'Horn-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Horn-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Horn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Horn-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Horn)))
  'Horn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Horn)))
  'Horn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Horn)))
  "Returns string type for a service object of type '<Horn>"
  "eve_msgs/Horn")