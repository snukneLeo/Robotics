;; Auto-generated. Do not edit!


(when (boundp 'scada_project::Service)
  (if (not (find-package "SCADA_PROJECT"))
    (make-package "SCADA_PROJECT"))
  (shadow 'Service (find-package "SCADA_PROJECT")))
(unless (find-package "SCADA_PROJECT::SERVICE")
  (make-package "SCADA_PROJECT::SERVICE"))
(unless (find-package "SCADA_PROJECT::SERVICEREQUEST")
  (make-package "SCADA_PROJECT::SERVICEREQUEST"))
(unless (find-package "SCADA_PROJECT::SERVICERESPONSE")
  (make-package "SCADA_PROJECT::SERVICERESPONSE"))

(in-package "ROS")





(defclass scada_project::ServiceRequest
  :super ros::object
  :slots ())

(defmethod scada_project::ServiceRequest
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

(defclass scada_project::ServiceResponse
  :super ros::object
  :slots ())

(defmethod scada_project::ServiceResponse
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

(defclass scada_project::Service
  :super ros::object
  :slots ())

(setf (get scada_project::Service :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get scada_project::Service :datatype-) "scada_project/Service")
(setf (get scada_project::Service :request) scada_project::ServiceRequest)
(setf (get scada_project::Service :response) scada_project::ServiceResponse)

(defmethod scada_project::ServiceRequest
  (:response () (instance scada_project::ServiceResponse :init)))

(setf (get scada_project::ServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get scada_project::ServiceRequest :datatype-) "scada_project/ServiceRequest")
(setf (get scada_project::ServiceRequest :definition-)
      "
---
")

(setf (get scada_project::ServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get scada_project::ServiceResponse :datatype-) "scada_project/ServiceResponse")
(setf (get scada_project::ServiceResponse :definition-)
      "
---
")



(provide :scada_project/Service "d41d8cd98f00b204e9800998ecf8427e")


