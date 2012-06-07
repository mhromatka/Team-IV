; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude RequestPlaneID-request.msg.html

(cl:defclass <RequestPlaneID-request> (roslisp-msg-protocol:ros-message)
  ((requestedID
    :reader requestedID
    :initarg :requestedID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RequestPlaneID-request (<RequestPlaneID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestPlaneID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestPlaneID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<RequestPlaneID-request> is deprecated: use AU_UAV_ROS-srv:RequestPlaneID-request instead.")))

(cl:ensure-generic-function 'requestedID-val :lambda-list '(m))
(cl:defmethod requestedID-val ((m <RequestPlaneID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:requestedID-val is deprecated.  Use AU_UAV_ROS-srv:requestedID instead.")
  (requestedID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestPlaneID-request>) ostream)
  "Serializes a message object of type '<RequestPlaneID-request>"
  (cl:let* ((signed (cl:slot-value msg 'requestedID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestPlaneID-request>) istream)
  "Deserializes a message object of type '<RequestPlaneID-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requestedID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestPlaneID-request>)))
  "Returns string type for a service object of type '<RequestPlaneID-request>"
  "AU_UAV_ROS/RequestPlaneIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestPlaneID-request)))
  "Returns string type for a service object of type 'RequestPlaneID-request"
  "AU_UAV_ROS/RequestPlaneIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestPlaneID-request>)))
  "Returns md5sum for a message object of type '<RequestPlaneID-request>"
  "58e09e6bef3056cafdf42d800c5df65f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestPlaneID-request)))
  "Returns md5sum for a message object of type 'RequestPlaneID-request"
  "58e09e6bef3056cafdf42d800c5df65f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestPlaneID-request>)))
  "Returns full string definition for message of type '<RequestPlaneID-request>"
  (cl:format cl:nil "int16 requestedID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestPlaneID-request)))
  "Returns full string definition for message of type 'RequestPlaneID-request"
  (cl:format cl:nil "int16 requestedID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestPlaneID-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestPlaneID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestPlaneID-request
    (cl:cons ':requestedID (requestedID msg))
))
;//! \htmlinclude RequestPlaneID-response.msg.html

(cl:defclass <RequestPlaneID-response> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RequestPlaneID-response (<RequestPlaneID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestPlaneID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestPlaneID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<RequestPlaneID-response> is deprecated: use AU_UAV_ROS-srv:RequestPlaneID-response instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <RequestPlaneID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestPlaneID-response>) ostream)
  "Serializes a message object of type '<RequestPlaneID-response>"
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestPlaneID-response>) istream)
  "Deserializes a message object of type '<RequestPlaneID-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestPlaneID-response>)))
  "Returns string type for a service object of type '<RequestPlaneID-response>"
  "AU_UAV_ROS/RequestPlaneIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestPlaneID-response)))
  "Returns string type for a service object of type 'RequestPlaneID-response"
  "AU_UAV_ROS/RequestPlaneIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestPlaneID-response>)))
  "Returns md5sum for a message object of type '<RequestPlaneID-response>"
  "58e09e6bef3056cafdf42d800c5df65f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestPlaneID-response)))
  "Returns md5sum for a message object of type 'RequestPlaneID-response"
  "58e09e6bef3056cafdf42d800c5df65f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestPlaneID-response>)))
  "Returns full string definition for message of type '<RequestPlaneID-response>"
  (cl:format cl:nil "int16 planeID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestPlaneID-response)))
  "Returns full string definition for message of type 'RequestPlaneID-response"
  (cl:format cl:nil "int16 planeID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestPlaneID-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestPlaneID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestPlaneID-response
    (cl:cons ':planeID (planeID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestPlaneID)))
  'RequestPlaneID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestPlaneID)))
  'RequestPlaneID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestPlaneID)))
  "Returns string type for a service object of type '<RequestPlaneID>"
  "AU_UAV_ROS/RequestPlaneID")