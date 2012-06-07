; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude CreateSimulatedPlane-request.msg.html

(cl:defclass <CreateSimulatedPlane-request> (roslisp-msg-protocol:ros-message)
  ((startingLatitude
    :reader startingLatitude
    :initarg :startingLatitude
    :type cl:float
    :initform 0.0)
   (startingLongitude
    :reader startingLongitude
    :initarg :startingLongitude
    :type cl:float
    :initform 0.0)
   (startingAltitude
    :reader startingAltitude
    :initarg :startingAltitude
    :type cl:float
    :initform 0.0)
   (startingBearing
    :reader startingBearing
    :initarg :startingBearing
    :type cl:integer
    :initform 0)
   (requestedID
    :reader requestedID
    :initarg :requestedID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CreateSimulatedPlane-request (<CreateSimulatedPlane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateSimulatedPlane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateSimulatedPlane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<CreateSimulatedPlane-request> is deprecated: use AU_UAV_ROS-srv:CreateSimulatedPlane-request instead.")))

(cl:ensure-generic-function 'startingLatitude-val :lambda-list '(m))
(cl:defmethod startingLatitude-val ((m <CreateSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:startingLatitude-val is deprecated.  Use AU_UAV_ROS-srv:startingLatitude instead.")
  (startingLatitude m))

(cl:ensure-generic-function 'startingLongitude-val :lambda-list '(m))
(cl:defmethod startingLongitude-val ((m <CreateSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:startingLongitude-val is deprecated.  Use AU_UAV_ROS-srv:startingLongitude instead.")
  (startingLongitude m))

(cl:ensure-generic-function 'startingAltitude-val :lambda-list '(m))
(cl:defmethod startingAltitude-val ((m <CreateSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:startingAltitude-val is deprecated.  Use AU_UAV_ROS-srv:startingAltitude instead.")
  (startingAltitude m))

(cl:ensure-generic-function 'startingBearing-val :lambda-list '(m))
(cl:defmethod startingBearing-val ((m <CreateSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:startingBearing-val is deprecated.  Use AU_UAV_ROS-srv:startingBearing instead.")
  (startingBearing m))

(cl:ensure-generic-function 'requestedID-val :lambda-list '(m))
(cl:defmethod requestedID-val ((m <CreateSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:requestedID-val is deprecated.  Use AU_UAV_ROS-srv:requestedID instead.")
  (requestedID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateSimulatedPlane-request>) ostream)
  "Serializes a message object of type '<CreateSimulatedPlane-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'startingLatitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'startingLongitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'startingAltitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'startingBearing)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requestedID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateSimulatedPlane-request>) istream)
  "Deserializes a message object of type '<CreateSimulatedPlane-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'startingLatitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'startingLongitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'startingAltitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startingBearing) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requestedID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateSimulatedPlane-request>)))
  "Returns string type for a service object of type '<CreateSimulatedPlane-request>"
  "AU_UAV_ROS/CreateSimulatedPlaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSimulatedPlane-request)))
  "Returns string type for a service object of type 'CreateSimulatedPlane-request"
  "AU_UAV_ROS/CreateSimulatedPlaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateSimulatedPlane-request>)))
  "Returns md5sum for a message object of type '<CreateSimulatedPlane-request>"
  "f4229a3b0a6dc585aeb2c4ece67a1b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateSimulatedPlane-request)))
  "Returns md5sum for a message object of type 'CreateSimulatedPlane-request"
  "f4229a3b0a6dc585aeb2c4ece67a1b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateSimulatedPlane-request>)))
  "Returns full string definition for message of type '<CreateSimulatedPlane-request>"
  (cl:format cl:nil "float64 startingLatitude~%float64 startingLongitude~%float64 startingAltitude~%int64 startingBearing~%int16 requestedID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateSimulatedPlane-request)))
  "Returns full string definition for message of type 'CreateSimulatedPlane-request"
  (cl:format cl:nil "float64 startingLatitude~%float64 startingLongitude~%float64 startingAltitude~%int64 startingBearing~%int16 requestedID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateSimulatedPlane-request>))
  (cl:+ 0
     8
     8
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateSimulatedPlane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateSimulatedPlane-request
    (cl:cons ':startingLatitude (startingLatitude msg))
    (cl:cons ':startingLongitude (startingLongitude msg))
    (cl:cons ':startingAltitude (startingAltitude msg))
    (cl:cons ':startingBearing (startingBearing msg))
    (cl:cons ':requestedID (requestedID msg))
))
;//! \htmlinclude CreateSimulatedPlane-response.msg.html

(cl:defclass <CreateSimulatedPlane-response> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CreateSimulatedPlane-response (<CreateSimulatedPlane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateSimulatedPlane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateSimulatedPlane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<CreateSimulatedPlane-response> is deprecated: use AU_UAV_ROS-srv:CreateSimulatedPlane-response instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <CreateSimulatedPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateSimulatedPlane-response>) ostream)
  "Serializes a message object of type '<CreateSimulatedPlane-response>"
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateSimulatedPlane-response>) istream)
  "Deserializes a message object of type '<CreateSimulatedPlane-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateSimulatedPlane-response>)))
  "Returns string type for a service object of type '<CreateSimulatedPlane-response>"
  "AU_UAV_ROS/CreateSimulatedPlaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSimulatedPlane-response)))
  "Returns string type for a service object of type 'CreateSimulatedPlane-response"
  "AU_UAV_ROS/CreateSimulatedPlaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateSimulatedPlane-response>)))
  "Returns md5sum for a message object of type '<CreateSimulatedPlane-response>"
  "f4229a3b0a6dc585aeb2c4ece67a1b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateSimulatedPlane-response)))
  "Returns md5sum for a message object of type 'CreateSimulatedPlane-response"
  "f4229a3b0a6dc585aeb2c4ece67a1b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateSimulatedPlane-response>)))
  "Returns full string definition for message of type '<CreateSimulatedPlane-response>"
  (cl:format cl:nil "int16 planeID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateSimulatedPlane-response)))
  "Returns full string definition for message of type 'CreateSimulatedPlane-response"
  (cl:format cl:nil "int16 planeID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateSimulatedPlane-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateSimulatedPlane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateSimulatedPlane-response
    (cl:cons ':planeID (planeID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateSimulatedPlane)))
  'CreateSimulatedPlane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateSimulatedPlane)))
  'CreateSimulatedPlane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSimulatedPlane)))
  "Returns string type for a service object of type '<CreateSimulatedPlane>"
  "AU_UAV_ROS/CreateSimulatedPlane")