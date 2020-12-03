; Auto-generated. Do not edit!


(cl:in-package quick_changing_eef-srv)


;//! \htmlinclude tool2LinkPose-request.msg.html

(cl:defclass <tool2LinkPose-request> (roslisp-msg-protocol:ros-message)
  ((inPose
    :reader inPose
    :initarg :inPose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass tool2LinkPose-request (<tool2LinkPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tool2LinkPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tool2LinkPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<tool2LinkPose-request> is deprecated: use quick_changing_eef-srv:tool2LinkPose-request instead.")))

(cl:ensure-generic-function 'inPose-val :lambda-list '(m))
(cl:defmethod inPose-val ((m <tool2LinkPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:inPose-val is deprecated.  Use quick_changing_eef-srv:inPose instead.")
  (inPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tool2LinkPose-request>) ostream)
  "Serializes a message object of type '<tool2LinkPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tool2LinkPose-request>) istream)
  "Deserializes a message object of type '<tool2LinkPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tool2LinkPose-request>)))
  "Returns string type for a service object of type '<tool2LinkPose-request>"
  "quick_changing_eef/tool2LinkPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2LinkPose-request)))
  "Returns string type for a service object of type 'tool2LinkPose-request"
  "quick_changing_eef/tool2LinkPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tool2LinkPose-request>)))
  "Returns md5sum for a message object of type '<tool2LinkPose-request>"
  "451f15a0288e63aaf0aa9741c1a43b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tool2LinkPose-request)))
  "Returns md5sum for a message object of type 'tool2LinkPose-request"
  "451f15a0288e63aaf0aa9741c1a43b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tool2LinkPose-request>)))
  "Returns full string definition for message of type '<tool2LinkPose-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped inPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tool2LinkPose-request)))
  "Returns full string definition for message of type 'tool2LinkPose-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped inPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tool2LinkPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tool2LinkPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'tool2LinkPose-request
    (cl:cons ':inPose (inPose msg))
))
;//! \htmlinclude tool2LinkPose-response.msg.html

(cl:defclass <tool2LinkPose-response> (roslisp-msg-protocol:ros-message)
  ((outPose
    :reader outPose
    :initarg :outPose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass tool2LinkPose-response (<tool2LinkPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tool2LinkPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tool2LinkPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quick_changing_eef-srv:<tool2LinkPose-response> is deprecated: use quick_changing_eef-srv:tool2LinkPose-response instead.")))

(cl:ensure-generic-function 'outPose-val :lambda-list '(m))
(cl:defmethod outPose-val ((m <tool2LinkPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quick_changing_eef-srv:outPose-val is deprecated.  Use quick_changing_eef-srv:outPose instead.")
  (outPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tool2LinkPose-response>) ostream)
  "Serializes a message object of type '<tool2LinkPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tool2LinkPose-response>) istream)
  "Deserializes a message object of type '<tool2LinkPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tool2LinkPose-response>)))
  "Returns string type for a service object of type '<tool2LinkPose-response>"
  "quick_changing_eef/tool2LinkPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2LinkPose-response)))
  "Returns string type for a service object of type 'tool2LinkPose-response"
  "quick_changing_eef/tool2LinkPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tool2LinkPose-response>)))
  "Returns md5sum for a message object of type '<tool2LinkPose-response>"
  "451f15a0288e63aaf0aa9741c1a43b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tool2LinkPose-response)))
  "Returns md5sum for a message object of type 'tool2LinkPose-response"
  "451f15a0288e63aaf0aa9741c1a43b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tool2LinkPose-response>)))
  "Returns full string definition for message of type '<tool2LinkPose-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped outPose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tool2LinkPose-response)))
  "Returns full string definition for message of type 'tool2LinkPose-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped outPose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tool2LinkPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tool2LinkPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'tool2LinkPose-response
    (cl:cons ':outPose (outPose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'tool2LinkPose)))
  'tool2LinkPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'tool2LinkPose)))
  'tool2LinkPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool2LinkPose)))
  "Returns string type for a service object of type '<tool2LinkPose>"
  "quick_changing_eef/tool2LinkPose")