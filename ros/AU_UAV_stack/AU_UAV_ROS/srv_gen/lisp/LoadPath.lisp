; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude LoadPath-request.msg.html

(cl:defclass <LoadPath-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LoadPath-request (<LoadPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<LoadPath-request> is deprecated: use AU_UAV_ROS-srv:LoadPath-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LoadPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:filename-val is deprecated.  Use AU_UAV_ROS-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <LoadPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadPath-request>) ostream)
  "Serializes a message object of type '<LoadPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadPath-request>) istream)
  "Deserializes a message object of type '<LoadPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadPath-request>)))
  "Returns string type for a service object of type '<LoadPath-request>"
  "AU_UAV_ROS/LoadPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPath-request)))
  "Returns string type for a service object of type 'LoadPath-request"
  "AU_UAV_ROS/LoadPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadPath-request>)))
  "Returns md5sum for a message object of type '<LoadPath-request>"
  "4061d08328adc7152ed27430e0829f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadPath-request)))
  "Returns md5sum for a message object of type 'LoadPath-request"
  "4061d08328adc7152ed27430e0829f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadPath-request>)))
  "Returns full string definition for message of type '<LoadPath-request>"
  (cl:format cl:nil "string filename~%int16 planeID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadPath-request)))
  "Returns full string definition for message of type 'LoadPath-request"
  (cl:format cl:nil "string filename~%int16 planeID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadPath-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':planeID (planeID msg))
))
;//! \htmlinclude LoadPath-response.msg.html

(cl:defclass <LoadPath-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass LoadPath-response (<LoadPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<LoadPath-response> is deprecated: use AU_UAV_ROS-srv:LoadPath-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <LoadPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadPath-response>) ostream)
  "Serializes a message object of type '<LoadPath-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadPath-response>) istream)
  "Deserializes a message object of type '<LoadPath-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadPath-response>)))
  "Returns string type for a service object of type '<LoadPath-response>"
  "AU_UAV_ROS/LoadPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPath-response)))
  "Returns string type for a service object of type 'LoadPath-response"
  "AU_UAV_ROS/LoadPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadPath-response>)))
  "Returns md5sum for a message object of type '<LoadPath-response>"
  "4061d08328adc7152ed27430e0829f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadPath-response)))
  "Returns md5sum for a message object of type 'LoadPath-response"
  "4061d08328adc7152ed27430e0829f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadPath-response>)))
  "Returns full string definition for message of type '<LoadPath-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadPath-response)))
  "Returns full string definition for message of type 'LoadPath-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadPath-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadPath-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadPath)))
  'LoadPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadPath)))
  'LoadPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadPath)))
  "Returns string type for a service object of type '<LoadPath>"
  "AU_UAV_ROS/LoadPath")