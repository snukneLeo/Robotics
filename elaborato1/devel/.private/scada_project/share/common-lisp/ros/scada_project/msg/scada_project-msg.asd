
(cl:in-package :asdf)

(defsystem "scada_project-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Message" :depends-on ("_package_Message"))
    (:file "_package_Message" :depends-on ("_package"))
  ))