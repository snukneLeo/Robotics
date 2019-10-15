;; Auto-generated. Do not edit!


(when (boundp 'elaboratoR1_B::Message1)
  (if (not (find-package "ELABORATOR1_B"))
    (make-package "ELABORATOR1_B"))
  (shadow 'Message1 (find-package "ELABORATOR1_B")))
(unless (find-package "ELABORATOR1_B::MESSAGE1")
  (make-package "ELABORATOR1_B::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude Message1.msg.html


(defclass elaboratoR1_B::Message1
  :super ros::object
  :slots ())

(defmethod elaboratoR1_B::Message1
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

(setf (get elaboratoR1_B::Message1 :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1_B::Message1 :datatype-) "elaboratoR1_B/Message1")
(setf (get elaboratoR1_B::Message1 :definition-)
      "
")



(provide :elaboratoR1_B/Message1 "d41d8cd98f00b204e9800998ecf8427e")


