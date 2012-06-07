; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude DeleteSimulatedPlane-request.msg.html

(cl:defclass <DeleteSimulatedPlane-request> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DeleteSimulatedPlane-request (<DeleteSimulatedPlane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteSimulatedPlane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteSimulatedPlane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<DeleteSimulatedPlane-request> is deprecated: use AU_UAV_ROS-srv:DeleteSimulatedPlane-request instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <DeleteSimulatedPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:planeID-val is deprecated.  Use AU_UAV_ROS-srv:planeID instead.")
  (planeID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteSimulatedPlane-request>) ostream)
  "Serializes a message object of type '<DeleteSimulatedPlane-request>"
  (cl:let* ((signed (cl:slot-value msg 'planeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteSimulatedPlane-request>) istream)
  "Deserializes a message object of type '<DeleteSimulatedPlane-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planeID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteSimulatedPlane-request>)))
  "Returns string type for a service object of type '<DeleteSimulatedPlane-request>"
  "AU_UAV_ROS/DeleteSimulatedPlaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSimulatedPlane-request)))
  "Returns string type for a service object of type 'DeleteSimulatedPlane-request"
  "AU_UAV_ROS/DeleteSimulatedPlaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteSimulatedPlane-request>)))
  "Returns md5sum for a message object of type '<DeleteSimulatedPlane-request>"
  "fc45473ddd329d08f1fc4a2e24e8bc0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteSimulatedPlane-request)))
  "Returns md5sum for a message object of type 'DeleteSimulatedPlane-request"
  "fc45473ddd329d08f1fc4a2e24e8bc0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteSimulatedPlane-request>)))
  "Returns full string definition for message of type '<DeleteSimulatedPlane-request>"
  (cl:format cl:nil "int16 planeID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteSimulatedPlane-request)))
  "Returns full string definition for message of type 'DeleteSimulatedPlane-request"
  (cl:format cl:nil "int16 planeID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteSimulatedPlane-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteSimulatedPlane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteSimulatedPlane-request
    (cl:cons ':planeID (planeID msg))
))
;//! \htmlinclude DeleteSimulatedPlane-response.msg.html

(cl:defclass <DeleteSimulatedPlane-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteSimulatedPlane-response (<DeleteSimulatedPlane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteSimulatedPlane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteSimulatedPlane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<DeleteSimulatedPlane-response> is deprecated: use AU_UAV_ROS-srv:DeleteSimulatedPlane-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <DeleteSimulatedPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteSimulatedPlane-response>) ostream)
  "Serializes a message object of type '<DeleteSimulatedPlane-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteSimulatedPlane-response>) istream)
  "Deserializes a message object of type '<DeleteSimulatedPlane-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteSimulatedPlane-response>)))
  "Returns string type for a service object of type '<DeleteSimulatedPlane-response>"
  "AU_UAV_ROS/DeleteSimulatedPlaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSimulatedPlane-response)))
  "Returns string type for a service object of type 'DeleteSimulatedPlane-response"
  "AU_UAV_ROS/DeleteSimulatedPlaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteSimulatedPlane-response>)))
  "Returns md5sum for a message object of type '<DeleteSimulatedPlane-response>"
  "fc45473ddd329d08f1fc4a2e24e8bc0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteSimulatedPlane-response)))
  "Returns md5sum for a message object of type 'DeleteSimulatedPlane-response"
  "fc45473ddd329d08f1fc4a2e24e8bc0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteSimulatedPlane-response>)))
  "Returns full string definition for message of type '<DeleteSimulatedPlane-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteSimulatedPlane-response)))
  "Returns full string definition for message of type 'DeleteSimulatedPlane-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteSimulatedPlane-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteSimulatedPlane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteSimulatedPlane-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteSimulatedPlane)))
  'DeleteSimulatedPlane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteSimulatedPlane)))
  'DeleteSimulatedPlane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSimulatedPlane)))
  "Returns string type for a service object of type '<DeleteSimulatedPlane>"
  "AU_UAV_ROS/DeleteSimulatedPlane")