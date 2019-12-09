;; Auto-generated. Do not edit!


(when (boundp 'scada_project::Message)
  (if (not (find-package "SCADA_PROJECT"))
    (make-package "SCADA_PROJECT"))
  (shadow 'Message (find-package "SCADA_PROJECT")))
(unless (find-package "SCADA_PROJECT::MESSAGE")
  (make-package "SCADA_PROJECT::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Message.msg.html


(defclass scada_project::Message
  :super ros::object
  :slots ())

(defmethod scada_project::Message
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

(setf (get scada_project::Message :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get scada_project::Message :datatype-) "scada_project/Message")
(setf (get scada_project::Message :definition-)
      "
")



(provide :scada_project/Message "d41d8cd98f00b204e9800998ecf8427e")


