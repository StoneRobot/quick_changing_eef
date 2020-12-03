; Auto-generated. Do not edit!


(cl:in-package quick_changing_eef-srv)


;//! \htmlinclude String-request.msg.html

(cl:defclass <String-request> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass String-request (<String-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<String-request> is deprecated: use quick_changing_eef-srv:String-request instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <String-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:str-val is deprecated.  Use quick_changing_eef-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String-request>) ostream)
  "Serializes a message object of type '<String-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String-request>) istream)
  "Deserializes a message object of type '<String-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String-request>)))
  "Returns string type for a service object of type '<String-request>"
  "quick_changing_eef/StringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String-request)))
  "Returns string type for a service object of type 'String-request"
  "quick_changing_eef/StringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String-request>)))
  "Returns md5sum for a message object of type '<String-request>"
  "92ec2e7d829763b4ce5e0f3b00d111cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String-request)))
  "Returns md5sum for a message object of type 'String-request"
  "92ec2e7d829763b4ce5e0f3b00d111cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String-request>)))
  "Returns full string definition for message of type '<String-request>"
  (cl:format cl:nil "string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String-request)))
  "Returns full string definition for message of type 'String-request"
  (cl:format cl:nil "string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String-request>))
  "Converts a ROS message object to a list"
  (cl:list 'String-request
    (cl:cons ':str (str msg))
))
;//! \htmlinclude String-response.msg.html

(cl:defclass <String-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass String-response (<String-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<String-response> is deprecated: use quick_changing_eef-srv:String-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <String-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:result-val is deprecated.  Use quick_changing_eef-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String-response>) ostream)
  "Serializes a message object of type '<String-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String-response>) istream)
  "Deserializes a message object of type '<String-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String-response>)))
  "Returns string type for a service object of type '<String-response>"
  "quick_changing_eef/StringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String-response)))
  "Returns string type for a service object of type 'String-response"
  "quick_changing_eef/StringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String-response>)))
  "Returns md5sum for a message object of type '<String-response>"
  "92ec2e7d829763b4ce5e0f3b00d111cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String-response)))
  "Returns md5sum for a message object of type 'String-response"
  "92ec2e7d829763b4ce5e0f3b00d111cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String-response>)))
  "Returns full string definition for message of type '<String-response>"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String-response)))
  "Returns full string definition for message of type 'String-response"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String-response>))
  "Converts a ROS message object to a list"
  (cl:list 'String-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'String)))
  'String-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'String)))
  'String-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String)))
  "Returns string type for a service object of type '<String>"
  "quick_changing_eef/String")