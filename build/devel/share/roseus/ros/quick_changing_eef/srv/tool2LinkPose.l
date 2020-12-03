;; Auto-generated. Do not edit!


(when (boundp 'quick_changing_eef::tool2LinkPose)
  (if (not (find-package "QUICK_CHANGING_EEF"))
    (make-package "QUICK_CHANGING_EEF"))
  (shadow 'tool2LinkPose (find-package "QUICK_CHANGING_EEF")))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2LINKPOSE")
  (make-package "QUICK_CHANGING_EEF::TOOL2LINKPOSE"))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2LINKPOSEREQUEST")
  (make-package "QUICK_CHANGING_EEF::TOOL2LINKPOSEREQUEST"))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2LINKPOSERESPONSE")
  (make-package "QUICK_CHANGING_EEF::TOOL2LINKPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass quick_changing_eef::tool2LinkPoseRequest
  :super ros::object
  :slots (_inPose ))

(defmethod quick_changing_eef::tool2LinkPoseRequest
  (:init
   (&key
    ((:inPose __inPose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _inPose __inPose)
   self)
  (:inPose
   (&rest __inPose)
   (if (keywordp (car __inPose))
       (send* _inPose __inPose)
     (progn
       (if __inPose (setq _inPose (car __inPose)))
       _inPose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _inPose
    (send _inPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _inPose
       (send _inPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _inPose
     (send _inPose :deserialize buf ptr-) (incf ptr- (send _inPose :serialization-length))
   ;;
   self)
  )

(defclass quick_changing_eef::tool2LinkPoseResponse
  :super ros::object
  :slots (_outPose ))

(defmethod quick_changing_eef::tool2LinkPoseResponse
  (:init
   (&key
    ((:outPose __outPose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _outPose __outPose)
   self)
  (:outPose
   (&rest __outPose)
   (if (keywordp (car __outPose))
       (send* _outPose __outPose)
     (progn
       (if __outPose (setq _outPose (car __outPose)))
       _outPose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _outPose
    (send _outPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _outPose
       (send _outPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _outPose
     (send _outPose :deserialize buf ptr-) (incf ptr- (send _outPose :serialization-length))
   ;;
   self)
  )

(defclass quick_changing_eef::tool2LinkPose
  :super ros::object
  :slots ())

(setf (get quick_changing_eef::tool2LinkPose :md5sum-) "451f15a0288e63aaf0aa9741c1a43b65")
(setf (get quick_changing_eef::tool2LinkPose :datatype-) "quick_changing_eef/tool2LinkPose")
(setf (get quick_changing_eef::tool2LinkPose :request) quick_changing_eef::tool2LinkPoseRequest)
(setf (get quick_changing_eef::tool2LinkPose :response) quick_changing_eef::tool2LinkPoseResponse)

(defmethod quick_changing_eef::tool2LinkPoseRequest
  (:response () (instance quick_changing_eef::tool2LinkPoseResponse :init)))

(setf (get quick_changing_eef::tool2LinkPoseRequest :md5sum-) "451f15a0288e63aaf0aa9741c1a43b65")
(setf (get quick_changing_eef::tool2LinkPoseRequest :datatype-) "quick_changing_eef/tool2LinkPoseRequest")
(setf (get quick_changing_eef::tool2LinkPoseRequest :definition-)
      "geometry_msgs/PoseStamped inPose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped outPose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get quick_changing_eef::tool2LinkPoseResponse :md5sum-) "451f15a0288e63aaf0aa9741c1a43b65")
(setf (get quick_changing_eef::tool2LinkPoseResponse :datatype-) "quick_changing_eef/tool2LinkPoseResponse")
(setf (get quick_changing_eef::tool2LinkPoseResponse :definition-)
      "geometry_msgs/PoseStamped inPose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped outPose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :quick_changing_eef/tool2LinkPose "451f15a0288e63aaf0aa9741c1a43b65")


