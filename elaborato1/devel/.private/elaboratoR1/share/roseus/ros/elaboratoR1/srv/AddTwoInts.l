;; Auto-generated. Do not edit!


(when (boundp 'elaboratoR1::AddTwoInts)
  (if (not (find-package "ELABORATOR1"))
    (make-package "ELABORATOR1"))
  (shadow 'AddTwoInts (find-package "ELABORATOR1")))
(unless (find-package "ELABORATOR1::ADDTWOINTS")
  (make-package "ELABORATOR1::ADDTWOINTS"))
(unless (find-package "ELABORATOR1::ADDTWOINTSREQUEST")
  (make-package "ELABORATOR1::ADDTWOINTSREQUEST"))
(unless (find-package "ELABORATOR1::ADDTWOINTSRESPONSE")
  (make-package "ELABORATOR1::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass elaboratoR1::AddTwoIntsRequest
  :super ros::object
  :slots ())

(defmethod elaboratoR1::AddTwoIntsRequest
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

(defclass elaboratoR1::AddTwoIntsResponse
  :super ros::object
  :slots ())

(defmethod elaboratoR1::AddTwoIntsResponse
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

(defclass elaboratoR1::AddTwoInts
  :super ros::object
  :slots ())

(setf (get elaboratoR1::AddTwoInts :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1::AddTwoInts :datatype-) "elaboratoR1/AddTwoInts")
(setf (get elaboratoR1::AddTwoInts :request) elaboratoR1::AddTwoIntsRequest)
(setf (get elaboratoR1::AddTwoInts :response) elaboratoR1::AddTwoIntsResponse)

(defmethod elaboratoR1::AddTwoIntsRequest
  (:response () (instance elaboratoR1::AddTwoIntsResponse :init)))

(setf (get elaboratoR1::AddTwoIntsRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1::AddTwoIntsRequest :datatype-) "elaboratoR1/AddTwoIntsRequest")
(setf (get elaboratoR1::AddTwoIntsRequest :definition-)
      "
---
")

(setf (get elaboratoR1::AddTwoIntsResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get elaboratoR1::AddTwoIntsResponse :datatype-) "elaboratoR1/AddTwoIntsResponse")
(setf (get elaboratoR1::AddTwoIntsResponse :definition-)
      "
---
")



(provide :elaboratoR1/AddTwoInts "d41d8cd98f00b204e9800998ecf8427e")


