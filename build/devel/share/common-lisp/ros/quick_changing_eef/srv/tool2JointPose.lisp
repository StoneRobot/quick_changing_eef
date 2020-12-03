; Auto-generated. Do not edit!


(cl:in-package quick_changing_eef-srv)


;//! \htmlinclude tool2JointPose-request.msg.html

(cl:defclass <tool2JointPose-request> (roslisp-msg-protocol:ros-message)
  ((inPose
    :reader inPose
    :initarg :inPose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (isAngle
    :reader isAngle
    :initarg :isAngle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass tool2JointPose-request (<tool2JointPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tool2JointPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tool2JointPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<tool2JointPose-request> is deprecated: use quick_changing_eef-srv:tool2JointPose-request instead.")))

(cl:ensure-generic-function 'inPose-val :lambda-list '(m))
(cl:defmethod inPose-val ((m <tool2JointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:inPose-val is deprecated.  Use quick_changing_eef-srv:inPose instead.")
  (inPose m))

(cl:ensure-generic-function 'isAngle-val :lambda-list '(m))
(cl:defmethod isAngle-val ((m <tool2JointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:isAngle-val is deprecated.  Use quick_changing_eef-srv:isAngle instead.")
  (isAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tool2JointPose-request>) ostream)
  "Serializes a message object of type '<tool2JointPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inPose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAngle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tool2JointPose-request>) istream)
  "Deserializes a message object of type '<tool2JointPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inPose) istream)
    (cl:setf (cl:slot-value msg 'isAngle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tool2JointPose-request>)))
  "Returns string type for a service object of type '<tool2JointPose-request>"
  "quick_changing_eef/tool2JointPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2JointPose-request)))
  "Returns string type for a service object of type 'tool2JointPose-request"
  "quick_changing_eef/tool2JointPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tool2JointPose-request>)))
  "Returns md5sum for a message object of type '<tool2JointPose-request>"
  "df41041dcf782386cce1a3d9dec4e896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tool2JointPose-request)))
  "Returns md5sum for a message object of type 'tool2JointPose-request"
  "df41041dcf782386cce1a3d9dec4e896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tool2JointPose-request>)))
  "Returns full string definition for message of type '<tool2JointPose-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped inPose~%bool isAngle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tool2JointPose-request)))
  "Returns full string definition for message of type 'tool2JointPose-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped inPose~%bool isAngle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tool2JointPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inPose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tool2JointPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'tool2JointPose-request
    (cl:cons ':inPose (inPose msg))
    (cl:cons ':isAngle (isAngle msg))
))
;//! \htmlinclude tool2JointPose-response.msg.html

(cl:defclass <tool2JointPose-response> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass tool2JointPose-response (<tool2JointPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tool2JointPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tool2JointPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<tool2JointPose-response> is deprecated: use quick_changing_eef-srv:tool2JointPose-response instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <tool2JointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:joint-val is deprecated.  Use quick_changing_eef-srv:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tool2JointPose-response>) ostream)
  "Serializes a message object of type '<tool2JointPose-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tool2JointPose-response>) istream)
  "Deserializes a message object of type '<tool2JointPose-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tool2JointPose-response>)))
  "Returns string type for a service object of type '<tool2JointPose-response>"
  "quick_changing_eef/tool2JointPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2JointPose-response)))
  "Returns string type for a service object of type 'tool2JointPose-response"
  "quick_changing_eef/tool2JointPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tool2JointPose-response>)))
  "Returns md5sum for a message object of type '<tool2JointPose-response>"
  "df41041dcf782386cce1a3d9dec4e896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tool2JointPose-response)))
  "Returns md5sum for a message object of type 'tool2JointPose-response"
  "df41041dcf782386cce1a3d9dec4e896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tool2JointPose-response>)))
  "Returns full string definition for message of type '<tool2JointPose-response>"
  (cl:format cl:nil "float64[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tool2JointPose-response)))
  "Returns full string definition for message of type 'tool2JointPose-response"
  (cl:format cl:nil "float64[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tool2JointPose-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tool2JointPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'tool2JointPose-response
    (cl:cons ':joint (joint msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'tool2JointPose)))
  'tool2JointPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'tool2JointPose)))
  'tool2JointPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2JointPose)))
  "Returns string type for a service object of type '<tool2JointPose>"
  "quick_changing_eef/tool2JointPose")