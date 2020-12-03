;; Auto-generated. Do not edit!


(when (boundp 'quick_changing_eef::tool2JointPose)
  (if (not (find-package "QUICK_CHANGING_EEF"))
    (make-package "QUICK_CHANGING_EEF"))
  (shadow 'tool2JointPose (find-package "QUICK_CHANGING_EEF")))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSE")
  (make-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSE"))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSEREQUEST")
  (make-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSEREQUEST"))
(unless (find-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSERESPONSE")
  (make-package "QUICK_CHANGING_EEF::TOOL2JOINTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass quick_changing_eef::tool2JointPoseRequest
  :super ros::object
  :slots (_inPose _isAngle ))

(defmethod quick_changing_eef::tool2JointPoseRequest
  (:init
   (&key
    ((:inPose __inPose) (instance geometry_msgs::PoseStamped :init))
    ((:isAngle __isAngle) nil)
    )
   (send-super :init)
   (setq _inPose __inPose)
   (setq _isAngle __isAngle)
   self)
  (:inPose
   (&rest __inPose)
   (if (keywordp (car __inPose))
       (send* _inPose __inPose)
     (progn
       (if __inPose (setq _inPose (car __inPose)))
       _inPose)))
  (:isAngle
   (&optional __isAngle)
   (if __isAngle (setq _isAngle __isAngle)) _isAngle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _inPose
    (send _inPose :serialization-length)
    ;; bool _isAngle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _inPose
       (send _inPose :serialize s)
     ;; bool _isAngle
       (if _isAngle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _inPose
     (send _inPose :deserialize buf ptr-) (incf ptr- (send _inPose :serialization-length))
   ;; bool _isAngle
     (setq _isAngle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass quick_changing_eef::tool2JointPoseResponse
  :super ros::object
  :slots (_joint ))

(defmethod quick_changing_eef::tool2JointPoseResponse
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint
    (* 8    (length _joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint
     (write-long (length _joint) s)
     (dotimes (i (length _joint))
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass quick_changing_eef::tool2JointPose
  :super ros::object
  :slots ())

(setf (get quick_changing_eef::tool2JointPose :md5sum-) "df41041dcf782386cce1a3d9dec4e896")
(setf (get quick_changing_eef::tool2JointPose :datatype-) "quick_changing_eef/tool2JointPose")
(setf (get quick_changing_eef::tool2JointPose :request) quick_changing_eef::tool2JointPoseRequest)
(setf (get quick_changing_eef::tool2JointPose :response) quick_changing_eef::tool2JointPoseResponse)

(defmethod quick_changing_eef::tool2JointPoseRequest
  (:response () (instance quick_changing_eef::tool2JointPoseResponse :init)))

(setf (get quick_changing_eef::tool2JointPoseRequest :md5sum-) "df41041dcf782386cce1a3d9dec4e896")
(setf (get quick_changing_eef::tool2JointPoseRequest :datatype-) "quick_changing_eef/tool2JointPoseRequest")
(setf (get quick_changing_eef::tool2JointPoseRequest :definition-)
      "geometry_msgs/PoseStamped inPose
bool isAngle

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
float64[] joint
")

(setf (get quick_changing_eef::tool2JointPoseResponse :md5sum-) "df41041dcf782386cce1a3d9dec4e896")
(setf (get quick_changing_eef::tool2JointPoseResponse :datatype-) "quick_changing_eef/tool2JointPoseResponse")
(setf (get quick_changing_eef::tool2JointPoseResponse :definition-)
      "geometry_msgs/PoseStamped inPose
bool isAngle

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
float64[] joint
")



(provide :quick_changing_eef/tool2JointPose "df41041dcf782386cce1a3d9dec4e896")


