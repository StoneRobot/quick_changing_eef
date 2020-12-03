;; Auto-generated. Do not edit!


(when (boundp 'quick_changing_eef::ObjectPose)
  (if (not (find-package "QUICK_CHANGING_EEF"))
    (make-package "QUICK_CHANGING_EEF"))
  (shadow 'ObjectPose (find-package "QUICK_CHANGING_EEF")))
(unless (find-package "QUICK_CHANGING_EEF::OBJECTPOSE")
  (make-package "QUICK_CHANGING_EEF::OBJECTPOSE"))
(unless (find-package "QUICK_CHANGING_EEF::OBJECTPOSEREQUEST")
  (make-package "QUICK_CHANGING_EEF::OBJECTPOSEREQUEST"))
(unless (find-package "QUICK_CHANGING_EEF::OBJECTPOSERESPONSE")
  (make-package "QUICK_CHANGING_EEF::OBJECTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "HIROP_MSGS"))
  (ros::roseus-add-msgs "hirop_msgs"))




(defclass quick_changing_eef::ObjectPoseRequest
  :super ros::object
  :slots (_obj _pose ))

(defmethod quick_changing_eef::ObjectPoseRequest
  (:init
   (&key
    ((:obj __obj) "")
    ((:pose __pose) (instance hirop_msgs::Pose :init))
    )
   (send-super :init)
   (setq _obj (string __obj))
   (setq _pose __pose)
   self)
  (:obj
   (&optional __obj)
   (if __obj (setq _obj __obj)) _obj)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _obj
    4 (length _obj)
    ;; hirop_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obj
       (write-long (length _obj) s) (princ _obj s)
     ;; hirop_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obj
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; hirop_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass quick_changing_eef::ObjectPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod quick_changing_eef::ObjectPoseResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;;
   self)
  )

(defclass quick_changing_eef::ObjectPose
  :super ros::object
  :slots ())

(setf (get quick_changing_eef::ObjectPose :md5sum-) "06db6cf8b9cbae300f41698097de40c6")
(setf (get quick_changing_eef::ObjectPose :datatype-) "quick_changing_eef/ObjectPose")
(setf (get quick_changing_eef::ObjectPose :request) quick_changing_eef::ObjectPoseRequest)
(setf (get quick_changing_eef::ObjectPose :response) quick_changing_eef::ObjectPoseResponse)

(defmethod quick_changing_eef::ObjectPoseRequest
  (:response () (instance quick_changing_eef::ObjectPoseResponse :init)))

(setf (get quick_changing_eef::ObjectPoseRequest :md5sum-) "06db6cf8b9cbae300f41698097de40c6")
(setf (get quick_changing_eef::ObjectPoseRequest :datatype-) "quick_changing_eef/ObjectPoseRequest")
(setf (get quick_changing_eef::ObjectPoseRequest :definition-)
      "string obj
hirop_msgs/Pose pose

================================================================================
MSG: hirop_msgs/Pose
geometry_msgs/Point position
hirop_msgs/FixedAngle rpy
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hirop_msgs/FixedAngle
float64 R
float64 P
---
int8 result


")

(setf (get quick_changing_eef::ObjectPoseResponse :md5sum-) "06db6cf8b9cbae300f41698097de40c6")
(setf (get quick_changing_eef::ObjectPoseResponse :datatype-) "quick_changing_eef/ObjectPoseResponse")
(setf (get quick_changing_eef::ObjectPoseResponse :definition-)
      "string obj
hirop_msgs/Pose pose

================================================================================
MSG: hirop_msgs/Pose
geometry_msgs/Point position
hirop_msgs/FixedAngle rpy
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hirop_msgs/FixedAngle
float64 R
float64 P
---
int8 result


")



(provide :quick_changing_eef/ObjectPose "06db6cf8b9cbae300f41698097de40c6")


