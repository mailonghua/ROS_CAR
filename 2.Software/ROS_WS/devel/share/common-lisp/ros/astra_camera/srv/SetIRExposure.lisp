; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetIRExposure-request.msg.html

(cl:defclass <SetIRExposure-request> (roslisp-msg-protocol:ros-message)
  ((exposure
    :reader exposure
    :initarg :exposure
    :type cl:integer
    :initform 0))
)

(cl:defclass SetIRExposure-request (<SetIRExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRExposure-request> is deprecated: use astra_camera-srv:SetIRExposure-request instead.")))

(cl:ensure-generic-function 'exposure-val :lambda-list '(m))
(cl:defmethod exposure-val ((m <SetIRExposure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:exposure-val is deprecated.  Use astra_camera-srv:exposure instead.")
  (exposure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRExposure-request>) ostream)
  "Serializes a message object of type '<SetIRExposure-request>"
  (cl:let* ((signed (cl:slot-value msg 'exposure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRExposure-request>) istream)
  "Deserializes a message object of type '<SetIRExposure-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exposure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRExposure-request>)))
  "Returns string type for a service object of type '<SetIRExposure-request>"
  "astra_camera/SetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRExposure-request)))
  "Returns string type for a service object of type 'SetIRExposure-request"
  "astra_camera/SetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRExposure-request>)))
  "Returns md5sum for a message object of type '<SetIRExposure-request>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRExposure-request)))
  "Returns md5sum for a message object of type 'SetIRExposure-request"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRExposure-request>)))
  "Returns full string definition for message of type '<SetIRExposure-request>"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRExposure-request)))
  "Returns full string definition for message of type 'SetIRExposure-request"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRExposure-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRExposure-request
    (cl:cons ':exposure (exposure msg))
))
;//! \htmlinclude SetIRExposure-response.msg.html

(cl:defclass <SetIRExposure-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetIRExposure-response (<SetIRExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIRExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIRExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetIRExposure-response> is deprecated: use astra_camera-srv:SetIRExposure-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIRExposure-response>) ostream)
  "Serializes a message object of type '<SetIRExposure-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIRExposure-response>) istream)
  "Deserializes a message object of type '<SetIRExposure-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIRExposure-response>)))
  "Returns string type for a service object of type '<SetIRExposure-response>"
  "astra_camera/SetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRExposure-response)))
  "Returns string type for a service object of type 'SetIRExposure-response"
  "astra_camera/SetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIRExposure-response>)))
  "Returns md5sum for a message object of type '<SetIRExposure-response>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIRExposure-response)))
  "Returns md5sum for a message object of type 'SetIRExposure-response"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIRExposure-response>)))
  "Returns full string definition for message of type '<SetIRExposure-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIRExposure-response)))
  "Returns full string definition for message of type 'SetIRExposure-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIRExposure-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIRExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIRExposure-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIRExposure)))
  'SetIRExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIRExposure)))
  'SetIRExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIRExposure)))
  "Returns string type for a service object of type '<SetIRExposure>"
  "astra_camera/SetIRExposure")