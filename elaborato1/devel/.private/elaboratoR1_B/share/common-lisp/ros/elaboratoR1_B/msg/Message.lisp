; Auto-generated. Do not edit!


(cl:in-package elaboratoR1_B-msg)


;//! \htmlinclude Message.msg.html

(cl:defclass <Message> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Message (<Message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elaboratoR1_B-msg:<Message> is deprecated: use elaboratoR1_B-msg:Message instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message>) ostream)
  "Serializes a message object of type '<Message>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message>) istream)
  "Deserializes a message object of type '<Message>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message>)))
  "Returns string type for a message object of type '<Message>"
  "elaboratoR1_B/Message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message)))
  "Returns string type for a message object of type 'Message"
  "elaboratoR1_B/Message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message>)))
  "Returns md5sum for a message object of type '<Message>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message)))
  "Returns md5sum for a message object of type 'Message"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message>)))
  "Returns full string definition for message of type '<Message>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message)))
  "Returns full string definition for message of type 'Message"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message>))
  "Converts a ROS message object to a list"
  (cl:list 'Message
))
