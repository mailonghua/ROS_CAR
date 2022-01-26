
(cl:in-package :asdf)

(defsystem "exploration_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SetPolygon" :depends-on ("_package_SetPolygon"))
    (:file "_package_SetPolygon" :depends-on ("_package"))
  ))