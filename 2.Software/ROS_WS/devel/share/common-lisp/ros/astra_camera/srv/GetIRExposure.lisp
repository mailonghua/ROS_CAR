; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetIRExposure-request.msg.html

(cl:defclass <GetIRExposure-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetIRExposure-request (<GetIRExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIRExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIRExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetIRExposure-request> is deprecated: use astra_camera-srv:GetIRExposure-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIRExposure-request>) ostream)
  "Serializes a message object of type '<GetIRExposure-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIRExposure-request>) istream)
  "Deserializes a message object of type '<GetIRExposure-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIRExposure-request>)))
  "Returns string type for a service object of type '<GetIRExposure-request>"
  "astra_camera/GetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRExposure-request)))
  "Returns string type for a service object of type 'GetIRExposure-request"
  "astra_camera/GetIRExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIRExposure-request>)))
  "Returns md5sum for a message object of type '<GetIRExposure-request>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIRExposure-request)))
  "Returns md5sum for a message object of type 'GetIRExposure-request"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIRExposure-request>)))
  "Returns full string definition for message of type '<GetIRExposure-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIRExposure-request)))
  "Returns full string definition for message of type 'GetIRExposure-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIRExposure-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIRExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIRExposure-request
))
;//! \htmlinclude GetIRExposure-response.msg.html

(cl:defclass <GetIRExposure-response> (roslisp-msg-protocol:ros-message)
  ((exposure
    :reader exposure
    :initarg :exposure
    :type cl:integer
    :initform 0))
)

(cl:defclass GetIRExposure-response (<GetIRExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIRExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIRExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetIRExposure-response> is deprecated: use astra_camera-srv:GetIRExposure-response instead.")))

(cl:ensure-generic-function 'exposure-val :lambda-list '(m))
(cl:defmethod exposure-val ((m <GetIRExposure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:exposure-val is deprecated.  Use astra_camera-srv:exposure instead.")
  (exposure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIRExposure-response>) ostream)
  "Serializes a message object of type '<GetIRExposure-response>"
  (cl:let* ((signed (cl:slot-value msg 'exposure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIRExposure-response>) istream)
  "Deserializes a message object of type '<GetIRExposure-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exposure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIRExposure-response>)))
  "Returns string type for a service object of type '<GetIRExposure-response>"
  "astra_camera/GetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRExposure-response)))
  "Returns string type for a service object of type 'GetIRExposure-response"
  "astra_camera/GetIRExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIRExposure-response>)))
  "Returns md5sum for a message object of type '<GetIRExposure-response>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIRExposure-response)))
  "Returns md5sum for a message object of type 'GetIRExposure-response"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIRExposure-response>)))
  "Returns full string definition for message of type '<GetIRExposure-response>"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIRExposure-response)))
  "Returns full string definition for message of type 'GetIRExposure-response"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIRExposure-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIRExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIRExposure-response
    (cl:cons ':exposure (exposure msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIRExposure)))
  'GetIRExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIRExposure)))
  'GetIRExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIRExposure)))
  "Returns string type for a service object of type '<GetIRExposure>"
  "astra_camera/GetIRExposure")