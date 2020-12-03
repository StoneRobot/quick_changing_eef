;; Auto-generated. Do not edit!


(when (boundp 'quick_changing_eef::String)
  (if (not (find-package "QUICK_CHANGING_EEF"))
    (make-package "QUICK_CHANGING_EEF"))
  (shadow 'String (find-package "QUICK_CHANGING_EEF")))
(unless (find-package "QUICK_CHANGING_EEF::STRING")
  (make-package "QUICK_CHANGING_EEF::STRING"))
(unless (find-package "QUICK_CHANGING_EEF::STRINGREQUEST")
  (make-package "QUICK_CHANGING_EEF::STRINGREQUEST"))
(unless (find-package "QUICK_CHANGING_EEF::STRINGRESPONSE")
  (make-package "QUICK_CHANGING_EEF::STRINGRESPONSE"))

(in-package "ROS")





(defclass quick_changing_eef::StringRequest
  :super ros::object
  :slots (_str ))

(defmethod quick_changing_eef::StringRequest
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass quick_changing_eef::StringResponse
  :super ros::object
  :slots (_result ))

(defmethod quick_changing_eef::StringResponse
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

(defclass quick_changing_eef::String
  :super ros::object
  :slots ())

(setf (get quick_changing_eef::String :md5sum-) "92ec2e7d829763b4ce5e0f3b00d111cb")
(setf (get quick_changing_eef::String :datatype-) "quick_changing_eef/String")
(setf (get quick_changing_eef::String :request) quick_changing_eef::StringRequest)
(setf (get quick_changing_eef::String :response) quick_changing_eef::StringResponse)

(defmethod quick_changing_eef::StringRequest
  (:response () (instance quick_changing_eef::StringResponse :init)))

(setf (get quick_changing_eef::StringRequest :md5sum-) "92ec2e7d829763b4ce5e0f3b00d111cb")
(setf (get quick_changing_eef::StringRequest :datatype-) "quick_changing_eef/StringRequest")
(setf (get quick_changing_eef::StringRequest :definition-)
      "string str
---
int8 result
")

(setf (get quick_changing_eef::StringResponse :md5sum-) "92ec2e7d829763b4ce5e0f3b00d111cb")
(setf (get quick_changing_eef::StringResponse :datatype-) "quick_changing_eef/StringResponse")
(setf (get quick_changing_eef::StringResponse :definition-)
      "string str
---
int8 result
")



(provide :quick_changing_eef/String "92ec2e7d829763b4ce5e0f3b00d111cb")


