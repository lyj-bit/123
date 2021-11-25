
(cl:in-package :asdf)

(defsystem "ros_study-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sys" :depends-on ("_package_Sys"))
    (:file "_package_Sys" :depends-on ("_package"))
  ))