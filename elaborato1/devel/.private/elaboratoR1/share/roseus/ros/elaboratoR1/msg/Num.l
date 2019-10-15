;; Auto-generated. Do not edit!


(when (boundp 'elaboratoR1::Num)
  (if (not (find-package "ELABORATOR1"))
    (make-package "ELABORATOR1"))
  (shadow 'Num (find-package "ELABORATOR1")))
(unless (find-package "ELABORATOR1::NUM")
  (make-package "ELABORATOR1::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass elaboratoR1::Num
  :super ros::object
  :slots ())

(defmethod elaboratoR1::Num
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

(setf (get elaboratoR1::Num :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1::Num :datatype-) "elaboratoR1/Num")
(setf (get elaboratoR1::Num :definition-)
      "
")



(provide :elaboratoR1/Num "d41d8cd98f00b204e9800998ecf8427e")


