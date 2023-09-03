; Auto-generated. Do not edit!


(cl:in-package eve_msgs-srv)


;//! \htmlinclude Override-request.msg.html

(cl:defclass <Override-request> (roslisp-msg-protocol:ros-message)
  ((controller
    :reader controller
    :initarg :controller
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Override-request (<Override-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Override-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Override-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Override-request> is deprecated: use eve_msgs-srv:Override-request instead.")))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <Override-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:controller-val is deprecated.  Use eve_msgs-srv:controller instead.")
  (controller m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Override-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:type-val is deprecated.  Use eve_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Override-request>) ostream)
  "Serializes a message object of type '<Override-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Override-request>) istream)
  "Deserializes a message object of type '<Override-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Override-request>)))
  "Returns string type for a service object of type '<Override-request>"
  "eve_msgs/OverrideRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Override-request)))
  "Returns string type for a service object of type 'Override-request"
  "eve_msgs/OverrideRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Override-request>)))
  "Returns md5sum for a message object of type '<Override-request>"
  "29cdd02e1e856c7f99b046d6ef4a7a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Override-request)))
  "Returns md5sum for a message object of type 'Override-request"
  "29cdd02e1e856c7f99b046d6ef4a7a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Override-request>)))
  "Returns full string definition for message of type '<Override-request>"
  (cl:format cl:nil "std_msgs/String controller~%~%# 0 REQUEST_CONTROL	(Controller to Priority Switcher)~%# 1 RELEASE_CONTROL	(Priority Switcher to Controller)~%# 2 RESUME_CONTROL	(Priority Switcher to Controller)~%# 3 CONTROLLER_EXIT	(Controller to Priority Switcher)~%~%int8 type~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Override-request)))
  "Returns full string definition for message of type 'Override-request"
  (cl:format cl:nil "std_msgs/String controller~%~%# 0 REQUEST_CONTROL	(Controller to Priority Switcher)~%# 1 RELEASE_CONTROL	(Priority Switcher to Controller)~%# 2 RESUME_CONTROL	(Priority Switcher to Controller)~%# 3 CONTROLLER_EXIT	(Controller to Priority Switcher)~%~%int8 type~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Override-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Override-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Override-request
    (cl:cons ':controller (controller msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude Override-response.msg.html

(cl:defclass <Override-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Override-response (<Override-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Override-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Override-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eve_msgs-srv:<Override-response> is deprecated: use eve_msgs-srv:Override-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Override-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eve_msgs-srv:status-val is deprecated.  Use eve_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Override-response>) ostream)
  "Serializes a message object of type '<Override-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Override-response>) istream)
  "Deserializes a message object of type '<Override-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Override-response>)))
  "Returns string type for a service object of type '<Override-response>"
  "eve_msgs/OverrideResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Override-response)))
  "Returns string type for a service object of type 'Override-response"
  "eve_msgs/OverrideResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Override-response>)))
  "Returns md5sum for a message object of type '<Override-response>"
  "29cdd02e1e856c7f99b046d6ef4a7a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Override-response)))
  "Returns md5sum for a message object of type 'Override-response"
  "29cdd02e1e856c7f99b046d6ef4a7a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Override-response>)))
  "Returns full string definition for message of type '<Override-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Override-response)))
  "Returns full string definition for message of type 'Override-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Override-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Override-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Override-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Override)))
  'Override-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Override)))
  'Override-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Override)))
  "Returns string type for a service object of type '<Override>"
  "eve_msgs/Override")