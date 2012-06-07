; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude GoToWaypoint-request.msg.html

(cl:defclass <GoToWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0)
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
    :initform 0.0)
   (isAvoidanceManeuver
    :reader isAvoidanceManeuver
    :initarg :isAvoidanceManeuver
    :type cl:boolean
    :initform cl:nil)
   (isNewQueue
    :reader isNewQueue
    :initarg :isNewQueue
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoToWaypoint-request (<GoToWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<GoToWaypoint-request> is deprecated: use AU_UAV_ROS-srv:GoToWaypoint-request instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:latitude-val is deprecated.  Use AU_UAV_ROS-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:longitude-val is deprecated.  Use AU_UAV_ROS-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:altitude-val is deprecated.  Use AU_UAV_ROS-srv:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'isAvoidanceManeuver-val :lambda-list '(m))
(cl:defmethod isAvoidanceManeuver-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:isAvoidanceManeuver-val is deprecated.  Use AU_UAV_ROS-srv:isAvoidanceManeuver instead.")
  (isAvoidanceManeuver m))

(cl:ensure-generic-function 'isNewQueue-val :lambda-list '(m))
(cl:defmethod isNewQueue-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:isNewQueue-val is deprecated.  Use AU_UAV_ROS-srv:isNewQueue instead.")
  (isNewQueue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoint-request>) ostream)
  "Serializes a message object of type '<GoToWaypoint-request>"
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAvoidanceManeuver) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isNewQueue) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoint-request>) istream)
  "Deserializes a message object of type '<GoToWaypoint-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
    (cl:setf (cl:slot-value msg 'isAvoidanceManeuver) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isNewQueue) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoint-request>)))
  "Returns string type for a service object of type '<GoToWaypoint-request>"
  "AU_UAV_ROS/GoToWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint-request)))
  "Returns string type for a service object of type 'GoToWaypoint-request"
  "AU_UAV_ROS/GoToWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoint-request>)))
  "Returns md5sum for a message object of type '<GoToWaypoint-request>"
  "c8cfaca8efcd99e3add29323eb5d2746")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoint-request)))
  "Returns md5sum for a message object of type 'GoToWaypoint-request"
  "c8cfaca8efcd99e3add29323eb5d2746")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoint-request>)))
  "Returns full string definition for message of type '<GoToWaypoint-request>"
  (cl:format cl:nil "int16 planeID~%float64 latitude~%float64 longitude~%float64 altitude~%bool isAvoidanceManeuver~%bool isNewQueue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoint-request)))
  "Returns full string definition for message of type 'GoToWaypoint-request"
  (cl:format cl:nil "int16 planeID~%float64 latitude~%float64 longitude~%float64 altitude~%bool isAvoidanceManeuver~%bool isNewQueue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoint-request>))
  (cl:+ 0
     2
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoint-request
    (cl:cons ':planeID (planeID msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':isAvoidanceManeuver (isAvoidanceManeuver msg))
    (cl:cons ':isNewQueue (isNewQueue msg))
))
;//! \htmlinclude GoToWaypoint-response.msg.html

(cl:defclass <GoToWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass GoToWaypoint-response (<GoToWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<GoToWaypoint-response> is deprecated: use AU_UAV_ROS-srv:GoToWaypoint-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <GoToWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoint-response>) ostream)
  "Serializes a message object of type '<GoToWaypoint-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoint-response>) istream)
  "Deserializes a message object of type '<GoToWaypoint-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoint-response>)))
  "Returns string type for a service object of type '<GoToWaypoint-response>"
  "AU_UAV_ROS/GoToWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint-response)))
  "Returns string type for a service object of type 'GoToWaypoint-response"
  "AU_UAV_ROS/GoToWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoint-response>)))
  "Returns md5sum for a message object of type '<GoToWaypoint-response>"
  "c8cfaca8efcd99e3add29323eb5d2746")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoint-response)))
  "Returns md5sum for a message object of type 'GoToWaypoint-response"
  "c8cfaca8efcd99e3add29323eb5d2746")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoint-response>)))
  "Returns full string definition for message of type '<GoToWaypoint-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoint-response)))
  "Returns full string definition for message of type 'GoToWaypoint-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoint-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoint-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToWaypoint)))
  'GoToWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToWaypoint)))
  'GoToWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint)))
  "Returns string type for a service object of type '<GoToWaypoint>"
  "AU_UAV_ROS/GoToWaypoint")