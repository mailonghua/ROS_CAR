; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetUVCExposure-request.msg.html

(cl:defclass <SetUVCExposure-request> (roslisp-msg-protocol:ros-message)
  ((exposure
    :reader exposure
    :initarg :exposure
    :type cl:integer
    :initform 0))
)

(cl:defclass SetUVCExposure-request (<SetUVCExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCExposure-request> is deprecated: use astra_camera-srv:SetUVCExposure-request instead.")))

(cl:ensure-generic-function 'exposure-val :lambda-list '(m))
(cl:defmethod exposure-val ((m <SetUVCExposure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:exposure-val is deprecated.  Use astra_camera-srv:exposure instead.")
  (exposure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCExposure-request>) ostream)
  "Serializes a message object of type '<SetUVCExposure-request>"
  (cl:let* ((signed (cl:slot-value msg 'exposure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCExposure-request>) istream)
  "Deserializes a message object of type '<SetUVCExposure-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exposure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCExposure-request>)))
  "Returns string type for a service object of type '<SetUVCExposure-request>"
  "astra_camera/SetUVCExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCExposure-request)))
  "Returns string type for a service object of type 'SetUVCExposure-request"
  "astra_camera/SetUVCExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCExposure-request>)))
  "Returns md5sum for a message object of type '<SetUVCExposure-request>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCExposure-request)))
  "Returns md5sum for a message object of type 'SetUVCExposure-request"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCExposure-request>)))
  "Returns full string definition for message of type '<SetUVCExposure-request>"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCExposure-request)))
  "Returns full string definition for message of type 'SetUVCExposure-request"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCExposure-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCExposure-request
    (cl:cons ':exposure (exposure msg))
))
;//! \htmlinclude SetUVCExposure-response.msg.html

(cl:defclass <SetUVCExposure-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetUVCExposure-response (<SetUVCExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCExposure-response> is deprecated: use astra_camera-srv:SetUVCExposure-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCExposure-response>) ostream)
  "Serializes a message object of type '<SetUVCExposure-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCExposure-response>) istream)
  "Deserializes a message object of type '<SetUVCExposure-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCExposure-response>)))
  "Returns string type for a service object of type '<SetUVCExposure-response>"
  "astra_camera/SetUVCExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCExposure-response)))
  "Returns string type for a service object of type 'SetUVCExposure-response"
  "astra_camera/SetUVCExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCExposure-response>)))
  "Returns md5sum for a message object of type '<SetUVCExposure-response>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCExposure-response)))
  "Returns md5sum for a message object of type 'SetUVCExposure-response"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCExposure-response>)))
  "Returns full string definition for message of type '<SetUVCExposure-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCExposure-response)))
  "Returns full string definition for message of type 'SetUVCExposure-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCExposure-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCExposure-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUVCExposure)))
  'SetUVCExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUVCExposure)))
  'SetUVCExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCExposure)))
  "Returns string type for a service object of type '<SetUVCExposure>"
  "astra_camera/SetUVCExposure")