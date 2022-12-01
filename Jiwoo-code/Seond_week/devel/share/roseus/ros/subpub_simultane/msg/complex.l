;; Auto-generated. Do not edit!


(when (boundp 'subpub_simultane::complex)
  (if (not (find-package "SUBPUB_SIMULTANE"))
    (make-package "SUBPUB_SIMULTANE"))
  (shadow 'complex (find-package "SUBPUB_SIMULTANE")))
(unless (find-package "SUBPUB_SIMULTANE::COMPLEX")
  (make-package "SUBPUB_SIMULTANE::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude complex.msg.html


(defclass subpub_simultane::complex
  :super ros::object
  :slots (_real _imaginray ))

(defmethod subpub_simultane::complex
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

(setf (get subpub_simultane::complex :md5sum-) "c61ad788bc5613f5fbb09120ab3bfc8a")
(setf (get subpub_simultane::complex :datatype-) "subpub_simultane/complex")
(setf (get subpub_simultane::complex :definition-)
      "float32 real
float32 imaginray


")



(provide :subpub_simultane/complex "c61ad788bc5613f5fbb09120ab3bfc8a")


