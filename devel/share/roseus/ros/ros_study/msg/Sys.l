;; Auto-generated. Do not edit!


(when (boundp 'ros_study::Sys)
  (if (not (find-package "ROS_STUDY"))
    (make-package "ROS_STUDY"))
  (shadow 'Sys (find-package "ROS_STUDY")))
(unless (find-package "ROS_STUDY::SYS")
  (make-package "ROS_STUDY::SYS"))

(in-package "ROS")
;;//! \htmlinclude Sys.msg.html


(defclass ros_study::Sys
  :super ros::object
  :slots (_cpu_percent _virtual_memory_percent _disk_free ))

(defmethod ros_study::Sys
  (:init
   (&key
    ((:cpu_percent __cpu_percent) 0.0)
    ((:virtual_memory_percent __virtual_memory_percent) 0.0)
    ((:disk_free __disk_free) 0)
    )
   (send-super :init)
   (setq _cpu_percent (float __cpu_percent))
   (setq _virtual_memory_percent (float __virtual_memory_percent))
   (setq _disk_free (round __disk_free))
   self)
  (:cpu_percent
   (&optional __cpu_percent)
   (if __cpu_percent (setq _cpu_percent __cpu_percent)) _cpu_percent)
  (:virtual_memory_percent
   (&optional __virtual_memory_percent)
   (if __virtual_memory_percent (setq _virtual_memory_percent __virtual_memory_percent)) _virtual_memory_percent)
  (:disk_free
   (&optional __disk_free)
   (if __disk_free (setq _disk_free __disk_free)) _disk_free)
  (:serialization-length
   ()
   (+
    ;; float32 _cpu_percent
    4
    ;; float32 _virtual_memory_percent
    4
    ;; uint8 _disk_free
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cpu_percent
       (sys::poke _cpu_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _virtual_memory_percent
       (sys::poke _virtual_memory_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _disk_free
       (write-byte _disk_free s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cpu_percent
     (setq _cpu_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _virtual_memory_percent
     (setq _virtual_memory_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _disk_free
     (setq _disk_free (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_study::Sys :md5sum-) "c167532159c4742928a4543c7c3dd1fb")
(setf (get ros_study::Sys :datatype-) "ros_study/Sys")
(setf (get ros_study::Sys :definition-)
      "float32 cpu_percent
float32 virtual_memory_percent
uint8 disk_free
")



(provide :ros_study/Sys "c167532159c4742928a4543c7c3dd1fb")


