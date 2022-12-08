;; Auto-generated. Do not edit!


(when (boundp 'service_ex::WordCount)
  (if (not (find-package "SERVICE_EX"))
    (make-package "SERVICE_EX"))
  (shadow 'WordCount (find-package "SERVICE_EX")))
(unless (find-package "SERVICE_EX::WORDCOUNT")
  (make-package "SERVICE_EX::WORDCOUNT"))
(unless (find-package "SERVICE_EX::WORDCOUNTREQUEST")
  (make-package "SERVICE_EX::WORDCOUNTREQUEST"))
(unless (find-package "SERVICE_EX::WORDCOUNTRESPONSE")
  (make-package "SERVICE_EX::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass service_ex::WordCountRequest
  :super ros::object
  :slots (_x _y ))

(defmethod service_ex::WordCountRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint32 _x
    4
    ;; uint32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _x
       (write-long _x s)
     ;; uint32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_ex::WordCountResponse
  :super ros::object
  :slots (_z ))

(defmethod service_ex::WordCountResponse
  (:init
   (&key
    ((:z __z) 0)
    )
   (send-super :init)
   (setq _z (round __z))
   self)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; uint32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _z
       (write-long _z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_ex::WordCount
  :super ros::object
  :slots ())

(setf (get service_ex::WordCount :md5sum-) "2ad41f381ceb337a84acaf3c0801c353")
(setf (get service_ex::WordCount :datatype-) "service_ex/WordCount")
(setf (get service_ex::WordCount :request) service_ex::WordCountRequest)
(setf (get service_ex::WordCount :response) service_ex::WordCountResponse)

(defmethod service_ex::WordCountRequest
  (:response () (instance service_ex::WordCountResponse :init)))

(setf (get service_ex::WordCountRequest :md5sum-) "2ad41f381ceb337a84acaf3c0801c353")
(setf (get service_ex::WordCountRequest :datatype-) "service_ex/WordCountRequest")
(setf (get service_ex::WordCountRequest :definition-)
      "uint32 x
uint32 y
---
uint32 z


")

(setf (get service_ex::WordCountResponse :md5sum-) "2ad41f381ceb337a84acaf3c0801c353")
(setf (get service_ex::WordCountResponse :datatype-) "service_ex/WordCountResponse")
(setf (get service_ex::WordCountResponse :definition-)
      "uint32 x
uint32 y
---
uint32 z


")



(provide :service_ex/WordCount "2ad41f381ceb337a84acaf3c0801c353")


