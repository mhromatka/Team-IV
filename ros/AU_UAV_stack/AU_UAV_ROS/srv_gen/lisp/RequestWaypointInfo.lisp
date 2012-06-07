; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude RequestWaypointInfo-request.msg.html

(cl:defclass <RequestWaypointInfo-request> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0)
   (isAvoidanceWaypoint
    :reader isAvoidanceWaypoint
    :initarg :isAvoidanceWaypoint
    :type cl:boolean
    :initform cl:nil)
   (positionInQueue
    :reader positionInQueue
    :initarg :positionInQueue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RequestWaypointInfo-request (<RequestWaypointInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestWaypointInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestWaypointInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<RequestWaypointInfo-request> is deprecated: use AU_UAV_ROS-srv:RequestWaypointInfo-request instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <RequestWaypointInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))

(cl:ensure-generic-function 'isAvoidanceWaypoint-val :lambda-list '(m))
(cl:defmethod isAvoidanceWaypoint-val ((m <RequestWaypointInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:isAvoidanceWaypoint-val is deprecated.  Use AU_UAV_ROS-srv:isAvoidanceWaypoint instead.")
  (isAvoidanceWaypoint m))

(cl:ensure-generic-function 'positionInQueue-val :lambda-list '(m))
(cl:defmethod positionInQueue-val ((m <RequestWaypointInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:positionInQueue-val is deprecated.  Use AU_UAV_ROS-srv:positionInQueue instead.")
  (positionInQueue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestWaypointInfo-request>) ostream)
  "Serializes a message object of type '<RequestWaypointInfo-request>"
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAvoidanceWaypoint) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'positionInQueue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestWaypointInfo-request>) istream)
  "Deserializes a message object of type '<RequestWaypointInfo-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'isAvoidanceWaypoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'positionInQueue) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestWaypointInfo-request>)))
  "Returns string type for a service object of type '<RequestWaypointInfo-request>"
  "AU_UAV_ROS/RequestWaypointInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestWaypointInfo-request)))
  "Returns string type for a service object of type 'RequestWaypointInfo-request"
  "AU_UAV_ROS/RequestWaypointInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestWaypointInfo-request>)))
  "Returns md5sum for a message object of type '<RequestWaypointInfo-request>"
  "db9e3801b1da39b7fbc4397b931e6587")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestWaypointInfo-request)))
  "Returns md5sum for a message object of type 'RequestWaypointInfo-request"
  "db9e3801b1da39b7fbc4397b931e6587")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestWaypointInfo-request>)))
  "Returns full string definition for message of type '<RequestWaypointInfo-request>"
  (cl:format cl:nil "int16 planeID~%bool isAvoidanceWaypoint~%int16 positionInQueue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestWaypointInfo-request)))
  "Returns full string definition for message of type 'RequestWaypointInfo-request"
  (cl:format cl:nil "int16 planeID~%bool isAvoidanceWaypoint~%int16 positionInQueue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestWaypointInfo-request>))
  (cl:+ 0
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestWaypointInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestWaypointInfo-request
    (cl:cons ':planeID (planeID msg))
    (cl:cons ':isAvoidanceWaypoint (isAvoidanceWaypoint msg))
    (cl:cons ':positionInQueue (positionInQueue msg))
))
;//! \htmlinclude RequestWaypointInfo-response.msg.html

(cl:defclass <RequestWaypointInfo-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform "")
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass RequestWaypointInfo-response (<RequestWaypointInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestWaypointInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestWaypointInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<RequestWaypointInfo-response> is deprecated: use AU_UAV_ROS-srv:RequestWaypointInfo-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <RequestWaypointInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <RequestWaypointInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:latitude-val is deprecated.  Use AU_UAV_ROS-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <RequestWaypointInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:longitude-val is deprecated.  Use AU_UAV_ROS-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <RequestWaypointInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:altitude-val is deprecated.  Use AU_UAV_ROS-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestWaypointInfo-response>) ostream)
  "Serializes a message object of type '<RequestWaypointInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestWaypointInfo-response>) istream)
  "Deserializes a message object of type '<RequestWaypointInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestWaypointInfo-response>)))
  "Returns string type for a service object of type '<RequestWaypointInfo-response>"
  "AU_UAV_ROS/RequestWaypointInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestWaypointInfo-response)))
  "Returns string type for a service object of type 'RequestWaypointInfo-response"
  "AU_UAV_ROS/RequestWaypointInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestWaypointInfo-response>)))
  "Returns md5sum for a message object of type '<RequestWaypointInfo-response>"
  "db9e3801b1da39b7fbc4397b931e6587")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestWaypointInfo-response)))
  "Returns md5sum for a message object of type 'RequestWaypointInfo-response"
  "db9e3801b1da39b7fbc4397b931e6587")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestWaypointInfo-response>)))
  "Returns full string definition for message of type '<RequestWaypointInfo-response>"
  (cl:format cl:nil "string error~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestWaypointInfo-response)))
  "Returns full string definition for message of type 'RequestWaypointInfo-response"
  (cl:format cl:nil "string error~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestWaypointInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestWaypointInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestWaypointInfo-response
    (cl:cons ':error (error msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestWaypointInfo)))
  'RequestWaypointInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestWaypointInfo)))
  'RequestWaypointInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestWaypointInfo)))
  "Returns string type for a service object of type '<RequestWaypointInfo>"
  "AU_UAV_ROS/RequestWaypointInfo")