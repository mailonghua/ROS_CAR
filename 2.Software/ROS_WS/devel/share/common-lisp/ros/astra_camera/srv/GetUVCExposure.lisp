; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetUVCExposure-request.msg.html

(cl:defclass <GetUVCExposure-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUVCExposure-request (<GetUVCExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCExposure-request> is deprecated: use astra_camera-srv:GetUVCExposure-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCExposure-request>) ostream)
  "Serializes a message object of type '<GetUVCExposure-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCExposure-request>) istream)
  "Deserializes a message object of type '<GetUVCExposure-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCExposure-request>)))
  "Returns string type for a service object of type '<GetUVCExposure-request>"
  "astra_camera/GetUVCExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCExposure-request)))
  "Returns string type for a service object of type 'GetUVCExposure-request"
  "astra_camera/GetUVCExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCExposure-request>)))
  "Returns md5sum for a message object of type '<GetUVCExposure-request>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCExposure-request)))
  "Returns md5sum for a message object of type 'GetUVCExposure-request"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCExposure-request>)))
  "Returns full string definition for message of type '<GetUVCExposure-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCExposure-request)))
  "Returns full string definition for message of type 'GetUVCExposure-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCExposure-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCExposure-request
))
;//! \htmlinclude GetUVCExposure-response.msg.html

(cl:defclass <GetUVCExposure-response> (roslisp-msg-protocol:ros-message)
  ((exposure
    :reader exposure
    :initarg :exposure
    :type cl:integer
    :initform 0))
)

(cl:defclass GetUVCExposure-response (<GetUVCExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCExposure-response> is deprecated: use astra_camera-srv:GetUVCExposure-response instead.")))

(cl:ensure-generic-function 'exposure-val :lambda-list '(m))
(cl:defmethod exposure-val ((m <GetUVCExposure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:exposure-val is deprecated.  Use astra_camera-srv:exposure instead.")
  (exposure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCExposure-response>) ostream)
  "Serializes a message object of type '<GetUVCExposure-response>"
  (cl:let* ((signed (cl:slot-value msg 'exposure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCExposure-response>) istream)
  "Deserializes a message object of type '<GetUVCExposure-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exposure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCExposure-response>)))
  "Returns string type for a service object of type '<GetUVCExposure-response>"
  "astra_camera/GetUVCExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCExposure-response)))
  "Returns string type for a service object of type 'GetUVCExposure-response"
  "astra_camera/GetUVCExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCExposure-response>)))
  "Returns md5sum for a message object of type '<GetUVCExposure-response>"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCExposure-response)))
  "Returns md5sum for a message object of type 'GetUVCExposure-response"
  "0535ed1a1204bb999d0e7bea8f6c3c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCExposure-response>)))
  "Returns full string definition for message of type '<GetUVCExposure-response>"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCExposure-response)))
  "Returns full string definition for message of type 'GetUVCExposure-response"
  (cl:format cl:nil "int32 exposure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCExposure-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCExposure-response
    (cl:cons ':exposure (exposure msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUVCExposure)))
  'GetUVCExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUVCExposure)))
  'GetUVCExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCExposure)))
  "Returns string type for a service object of type '<GetUVCExposure>"
  "astra_camera/GetUVCExposure")