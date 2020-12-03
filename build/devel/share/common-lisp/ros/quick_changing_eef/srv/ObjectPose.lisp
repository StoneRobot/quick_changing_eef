; Auto-generated. Do not edit!


(cl:in-package quick_changing_eef-srv)


;//! \htmlinclude ObjectPose-request.msg.html

(cl:defclass <ObjectPose-request> (roslisp-msg-protocol:ros-message)
  ((obj
    :reader obj
    :initarg :obj
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type hirop_msgs-msg:Pose
    :initform (cl:make-instance 'hirop_msgs-msg:Pose)))
)

(cl:defclass ObjectPose-request (<ObjectPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<ObjectPose-request> is deprecated: use quick_changing_eef-srv:ObjectPose-request instead.")))

(cl:ensure-generic-function 'obj-val :lambda-list '(m))
(cl:defmethod obj-val ((m <ObjectPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:obj-val is deprecated.  Use quick_changing_eef-srv:obj instead.")
  (obj m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ObjectPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:pose-val is deprecated.  Use quick_changing_eef-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectPose-request>) ostream)
  "Serializes a message object of type '<ObjectPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectPose-request>) istream)
  "Deserializes a message object of type '<ObjectPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectPose-request>)))
  "Returns string type for a service object of type '<ObjectPose-request>"
  "quick_changing_eef/ObjectPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectPose-request)))
  "Returns string type for a service object of type 'ObjectPose-request"
  "quick_changing_eef/ObjectPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectPose-request>)))
  "Returns md5sum for a message object of type '<ObjectPose-request>"
  "06db6cf8b9cbae300f41698097de40c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectPose-request)))
  "Returns md5sum for a message object of type 'ObjectPose-request"
  "06db6cf8b9cbae300f41698097de40c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectPose-request>)))
  "Returns full string definition for message of type '<ObjectPose-request>"
  (cl:format cl:nil "string obj~%hirop_msgs/Pose pose~%~%================================================================================~%MSG: hirop_msgs/Pose~%geometry_msgs/Point position~%hirop_msgs/FixedAngle rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hirop_msgs/FixedAngle~%float64 R~%float64 P~%float64 Y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectPose-request)))
  "Returns full string definition for message of type 'ObjectPose-request"
  (cl:format cl:nil "string obj~%hirop_msgs/Pose pose~%~%================================================================================~%MSG: hirop_msgs/Pose~%geometry_msgs/Point position~%hirop_msgs/FixedAngle rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hirop_msgs/FixedAngle~%float64 R~%float64 P~%float64 Y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectPose-request
    (cl:cons ':obj (obj msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude ObjectPose-response.msg.html

(cl:defclass <ObjectPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectPose-response (<ObjectPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<ObjectPose-response> is deprecated: use quick_changing_eef-srv:ObjectPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ObjectPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:result-val is deprecated.  Use quick_changing_eef-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectPose-response>) ostream)
  "Serializes a message object of type '<ObjectPose-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectPose-response>) istream)
  "Deserializes a message object of type '<ObjectPose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectPose-response>)))
  "Returns string type for a service object of type '<ObjectPose-response>"
  "quick_changing_eef/ObjectPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectPose-response)))
  "Returns string type for a service object of type 'ObjectPose-response"
  "quick_changing_eef/ObjectPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectPose-response>)))
  "Returns md5sum for a message object of type '<ObjectPose-response>"
  "06db6cf8b9cbae300f41698097de40c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectPose-response)))
  "Returns md5sum for a message object of type 'ObjectPose-response"
  "06db6cf8b9cbae300f41698097de40c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectPose-response>)))
  "Returns full string definition for message of type '<ObjectPose-response>"
  (cl:format cl:nil "int8 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectPose-response)))
  "Returns full string definition for message of type 'ObjectPose-response"
  (cl:format cl:nil "int8 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObjectPose)))
  'ObjectPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObjectPose)))
  'ObjectPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectPose)))
  "Returns string type for a service object of type '<ObjectPose>"
  "quick_changing_eef/ObjectPose")