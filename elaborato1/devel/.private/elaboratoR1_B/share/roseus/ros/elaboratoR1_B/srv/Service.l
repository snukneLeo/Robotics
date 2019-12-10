;; Auto-generated. Do not edit!


(when (boundp 'elaboratoR1_B::Service)
  (if (not (find-package "ELABORATOR1_B"))
    (make-package "ELABORATOR1_B"))
  (shadow 'Service (find-package "ELABORATOR1_B")))
(unless (find-package "ELABORATOR1_B::SERVICE")
  (make-package "ELABORATOR1_B::SERVICE"))
(unless (find-package "ELABORATOR1_B::SERVICEREQUEST")
  (make-package "ELABORATOR1_B::SERVICEREQUEST"))
(unless (find-package "ELABORATOR1_B::SERVICERESPONSE")
  (make-package "ELABORATOR1_B::SERVICERESPONSE"))

(in-package "ROS")





(defclass elaboratoR1_B::ServiceRequest
  :super ros::object
  :slots ())

(defmethod elaboratoR1_B::ServiceRequest
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

(defclass elaboratoR1_B::ServiceResponse
  :super ros::object
  :slots ())

(defmethod elaboratoR1_B::ServiceResponse
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

(defclass elaboratoR1_B::Service
  :super ros::object
  :slots ())

(setf (get elaboratoR1_B::Service :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1_B::Service :datatype-) "elaboratoR1_B/Service")
(setf (get elaboratoR1_B::Service :request) elaboratoR1_B::ServiceRequest)
(setf (get elaboratoR1_B::Service :response) elaboratoR1_B::ServiceResponse)

(defmethod elaboratoR1_B::ServiceRequest
  (:response () (instance elaboratoR1_B::ServiceResponse :init)))

(setf (get elaboratoR1_B::ServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1_B::ServiceRequest :datatype-) "elaboratoR1_B/ServiceRequest")
(setf (get elaboratoR1_B::ServiceRequest :definition-)
      "
---
")

(setf (get elaboratoR1_B::ServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1_B::ServiceResponse :datatype-) "elaboratoR1_B/ServiceResponse")
(setf (get elaboratoR1_B::ServiceResponse :definition-)
      "
---
")



(provide :elaboratoR1_B/Service "d41d8cd98f00b204e9800998ecf8427e")


