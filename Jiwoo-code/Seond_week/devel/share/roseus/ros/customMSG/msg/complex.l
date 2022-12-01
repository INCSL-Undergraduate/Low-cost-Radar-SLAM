;; Auto-generated. Do not edit!


(when (boundp 'customMSG::complex)
  (if (not (find-package "CUSTOMMSG"))
    (make-package "CUSTOMMSG"))
  (shadow 'complex (find-package "CUSTOMMSG")))
(unless (find-package "CUSTOMMSG::COMPLEX")
  (make-package "CUSTOMMSG::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude complex.msg.html


(defclass customMSG::complex
  :super ros::object
  :slots (_real _imaginray ))

(defmethod customMSG::complex
  (:init
   (&key
    ((:real __real) 0.0)
    ((:imaginray __imaginray) 0.0)
    )
   (send-super :init)
   (setq _real (float __real))
   (setq _imaginray (float __imaginray))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginray
   (&optional __imaginray)
   (if __imaginray (setq _imaginray __imaginray)) _imaginray)
  (:serialization-length
   ()
   (+
    ;; float32 _real
    4
    ;; float32 _imaginray
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _real
       (sys::poke _real (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _imaginray
       (sys::poke _imaginray (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _real
     (setq _real (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _imaginray
     (setq _imaginray (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get customMSG::complex :md5sum-) "c61ad788bc5613f5fbb09120ab3bfc8a")
(setf (get customMSG::complex :datatype-) "customMSG/complex")
(setf (get customMSG::complex :definition-)
      "float32 real
float32 imaginray


")



(provide :customMSG/complex "c61ad788bc5613f5fbb09120ab3bfc8a")


