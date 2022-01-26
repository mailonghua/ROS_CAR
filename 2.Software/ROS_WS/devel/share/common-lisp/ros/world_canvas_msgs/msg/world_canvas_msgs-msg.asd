
(cl:in-package :asdf)

(defsystem "world_canvas_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "Annotation" :depends-on ("_package_Annotation"))
    (:file "_package_Annotation" :depends-on ("_package"))
    (:file "AnnotationData" :depends-on ("_package_AnnotationData"))
    (:file "_package_AnnotationData" :depends-on ("_package"))
    (:file "Annotations" :depends-on ("_package_Annotations"))
    (:file "_package_Annotations" :depends-on ("_package"))
    (:file "MapListEntry" :depends-on ("_package_MapListEntry"))
    (:file "_package_MapListEntry" :depends-on ("_package"))
    (:file "WorldCanvas" :depends-on ("_package_WorldCanvas"))
    (:file "_package_WorldCanvas" :depends-on ("_package"))
    (:file "YAMLData" :depends-on ("_package_YAMLData"))
    (:file "_package_YAMLData" :depends-on ("_package"))
  ))