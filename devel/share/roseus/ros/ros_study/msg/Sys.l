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
  :slots (_cpu_percent _virtual_memory_percent _disk_free _net_packets_recv _coretemp ))

(defmethod ros_study::Sys
  (:init
   (&key
    ((:cpu_percent __cpu_percent) 0.0)
    ((:virtual_memory_percent __virtual_memory_percent) 0.0)
    ((:disk_free __disk_free) 0)
    ((:net_packets_recv __net_packets_recv) 0)
    ((:coretemp __coretemp) 0.0)
    )
   (send-super :init)
   (setq _cpu_percent (float __cpu_percent))
   (setq _virtual_memory_percent (float __virtual_memory_percent))
   (setq _disk_free (round __disk_free))
   (setq _net_packets_recv (round __net_packets_recv))
   (setq _coretemp (float __coretemp))
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
  (:net_packets_recv
   (&optional __net_packets_recv)
   (if __net_packets_recv (setq _net_packets_recv __net_packets_recv)) _net_packets_recv)
  (:coretemp
   (&optional __coretemp)
   (if __coretemp (setq _coretemp __coretemp)) _coretemp)
  (:serialization-length
   ()
   (+
    ;; float32 _cpu_percent
    4
    ;; float32 _virtual_memory_percent
    4
    ;; uint64 _disk_free
    8
    ;; uint64 _net_packets_recv
    8
    ;; float32 _coretemp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cpu_percent
       (sys::poke _cpu_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _virtual_memory_percent
       (sys::poke _virtual_memory_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _disk_free
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _disk_free (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _disk_free) (= (length (_disk_free . bv)) 2)) ;; bignum
              (write-long (ash (elt (_disk_free . bv) 0) 0) s)
              (write-long (ash (elt (_disk_free . bv) 1) -1) s))
             ((and (class _disk_free) (= (length (_disk_free . bv)) 1)) ;; big1
              (write-long (elt (_disk_free . bv) 0) s)
              (write-long (if (>= _disk_free 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _disk_free s)(write-long (if (>= _disk_free 0) 0 #xffffffff) s)))
     ;; uint64 _net_packets_recv
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _net_packets_recv (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _net_packets_recv) (= (length (_net_packets_recv . bv)) 2)) ;; bignum
              (write-long (ash (elt (_net_packets_recv . bv) 0) 0) s)
              (write-long (ash (elt (_net_packets_recv . bv) 1) -1) s))
             ((and (class _net_packets_recv) (= (length (_net_packets_recv . bv)) 1)) ;; big1
              (write-long (elt (_net_packets_recv . bv) 0) s)
              (write-long (if (>= _net_packets_recv 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _net_packets_recv s)(write-long (if (>= _net_packets_recv 0) 0 #xffffffff) s)))
     ;; float32 _coretemp
       (sys::poke _coretemp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cpu_percent
     (setq _cpu_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _virtual_memory_percent
     (setq _virtual_memory_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _disk_free
     
#+(or :alpha :irix6 :x86_64)
      (setf _disk_free (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _disk_free (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _net_packets_recv
     
#+(or :alpha :irix6 :x86_64)
      (setf _net_packets_recv (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _net_packets_recv (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _coretemp
     (setq _coretemp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_study::Sys :md5sum-) "6c474b8d8a1c88a0d03e2a77e0dd4bce")
(setf (get ros_study::Sys :datatype-) "ros_study/Sys")
(setf (get ros_study::Sys :definition-)
      "float32 cpu_percent
float32 virtual_memory_percent
uint64 disk_free
uint64 net_packets_recv
float32 coretemp
")



(provide :ros_study/Sys "6c474b8d8a1c88a0d03e2a77e0dd4bce")


