; Auto-generated. Do not edit!


(cl:in-package scada_project-srv)


;//! \htmlinclude Service-request.msg.html

(cl:defclass <Service-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Service-request (<Service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scada_project-srv:<Service-request> is deprecated: use scada_project-srv:Service-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service-request>) ostream)
  "Serializes a message object of type '<Service-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service-request>) istream)
  "Deserializes a message object of type '<Service-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service-request>)))
  "Returns string type for a service object of type '<Service-request>"
  "scada_project/ServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service-request)))
  "Returns string type for a service object of type 'Service-request"
  "scada_project/ServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service-request>)))
  "Returns md5sum for a message object of type '<Service-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service-request)))
  "Returns md5sum for a message object of type 'Service-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service-request>)))
  "Returns full string definition for message of type '<Service-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service-request)))
  "Returns full string definition for message of type 'Service-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Service-request
))
;//! \htmlinclude Service-response.msg.html

(cl:defclass <Service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Service-response (<Service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scada_project-srv:<Service-response> is deprecated: use scada_project-srv:Service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service-response>) ostream)
  "Serializes a message object of type '<Service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service-response>) istream)
  "Deserializes a message object of type '<Service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service-response>)))
  "Returns string type for a service object of type '<Service-response>"
  "scada_project/ServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service-response)))
  "Returns string type for a service object of type 'Service-response"
  "scada_project/ServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service-response>)))
  "Returns md5sum for a message object of type '<Service-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service-response)))
  "Returns md5sum for a message object of type 'Service-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service-response>)))
  "Returns full string definition for message of type '<Service-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service-response)))
  "Returns full string definition for message of type 'Service-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Service)))
  'Service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Service)))
  'Service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service)))
  "Returns string type for a service object of type '<Service>"
  "scada_project/Service")