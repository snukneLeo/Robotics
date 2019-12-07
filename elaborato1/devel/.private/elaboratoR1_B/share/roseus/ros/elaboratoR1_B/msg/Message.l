;; Auto-generated. Do not edit!


(when (boundp 'elaboratoR1_B::Message)
  (if (not (find-package "ELABORATOR1_B"))
    (make-package "ELABORATOR1_B"))
  (shadow 'Message (find-package "ELABORATOR1_B")))
(unless (find-package "ELABORATOR1_B::MESSAGE")
  (make-package "ELABORATOR1_B::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Message.msg.html


(defclass elaboratoR1_B::Message
  :super ros::object
  :slots ())

(defmethod elaboratoR1_B::Message
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

(setf (get elaboratoR1_B::Message :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1_B::Message :datatype-) "elaboratoR1_B/Message")
(setf (get elaboratoR1_B::Message :definition-)
      "
")



(provide :elaboratoR1_B/Message "d41d8cd98f00b204e9800998ecf8427e")


