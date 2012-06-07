; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude SaveFlightData-request.msg.html

(cl:defclass <SaveFlightData-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SaveFlightData-request (<SaveFlightData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFlightData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFlightData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<SaveFlightData-request> is deprecated: use AU_UAV_ROS-srv:SaveFlightData-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveFlightData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:filename-val is deprecated.  Use AU_UAV_ROS-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFlightData-request>) ostream)
  "Serializes a message object of type '<SaveFlightData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFlightData-request>) istream)
  "Deserializes a message object of type '<SaveFlightData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFlightData-request>)))
  "Returns string type for a service object of type '<SaveFlightData-request>"
  "AU_UAV_ROS/SaveFlightDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFlightData-request)))
  "Returns string type for a service object of type 'SaveFlightData-request"
  "AU_UAV_ROS/SaveFlightDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFlightData-request>)))
  "Returns md5sum for a message object of type '<SaveFlightData-request>"
  "fe8131f61ada79495e0d839037fe5bd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFlightData-request)))
  "Returns md5sum for a message object of type 'SaveFlightData-request"
  "fe8131f61ada79495e0d839037fe5bd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFlightData-request>)))
  "Returns full string definition for message of type '<SaveFlightData-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFlightData-request)))
  "Returns full string definition for message of type 'SaveFlightData-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFlightData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFlightData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFlightData-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SaveFlightData-response.msg.html

(cl:defclass <SaveFlightData-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass SaveFlightData-response (<SaveFlightData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFlightData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFlightData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<SaveFlightData-response> is deprecated: use AU_UAV_ROS-srv:SaveFlightData-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <SaveFlightData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFlightData-response>) ostream)
  "Serializes a message object of type '<SaveFlightData-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFlightData-response>) istream)
  "Deserializes a message object of type '<SaveFlightData-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFlightData-response>)))
  "Returns string type for a service object of type '<SaveFlightData-response>"
  "AU_UAV_ROS/SaveFlightDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFlightData-response)))
  "Returns string type for a service object of type 'SaveFlightData-response"
  "AU_UAV_ROS/SaveFlightDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFlightData-response>)))
  "Returns md5sum for a message object of type '<SaveFlightData-response>"
  "fe8131f61ada79495e0d839037fe5bd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFlightData-response)))
  "Returns md5sum for a message object of type 'SaveFlightData-response"
  "fe8131f61ada79495e0d839037fe5bd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFlightData-response>)))
  "Returns full string definition for message of type '<SaveFlightData-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFlightData-response)))
  "Returns full string definition for message of type 'SaveFlightData-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFlightData-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFlightData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFlightData-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveFlightData)))
  'SaveFlightData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveFlightData)))
  'SaveFlightData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFlightData)))
  "Returns string type for a service object of type '<SaveFlightData>"
  "AU_UAV_ROS/SaveFlightData")