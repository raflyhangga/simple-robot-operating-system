;; Auto-generated. Do not edit!


(when (boundp 'demo_package::AddTwoInts)
  (if (not (find-package "DEMO_PACKAGE"))
    (make-package "DEMO_PACKAGE"))
  (shadow 'AddTwoInts (find-package "DEMO_PACKAGE")))
(unless (find-package "DEMO_PACKAGE::ADDTWOINTS")
  (make-package "DEMO_PACKAGE::ADDTWOINTS"))
(unless (find-package "DEMO_PACKAGE::ADDTWOINTSREQUEST")
  (make-package "DEMO_PACKAGE::ADDTWOINTSREQUEST"))
(unless (find-package "DEMO_PACKAGE::ADDTWOINTSRESPONSE")
  (make-package "DEMO_PACKAGE::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass demo_package::AddTwoIntsRequest
  :super ros::object
  :slots (_value1 _value2 ))

(defmethod demo_package::AddTwoIntsRequest
  (:init
   (&key
    ((:value1 __value1) 0)
    ((:value2 __value2) 0)
    )
   (send-super :init)
   (setq _value1 (round __value1))
   (setq _value2 (round __value2))
   self)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; int64 _value1
    8
    ;; int64 _value2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value1) (= (length (_value1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value1 . bv) 0) 0) s)
              (write-long (ash (elt (_value1 . bv) 1) -1) s))
             ((and (class _value1) (= (length (_value1 . bv)) 1)) ;; big1
              (write-long (elt (_value1 . bv) 0) s)
              (write-long (if (>= _value1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value1 s)(write-long (if (>= _value1 0) 0 #xffffffff) s)))
     ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value2) (= (length (_value2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value2 . bv) 0) 0) s)
              (write-long (ash (elt (_value2 . bv) 1) -1) s))
             ((and (class _value2) (= (length (_value2 . bv)) 1)) ;; big1
              (write-long (elt (_value2 . bv) 0) s)
              (write-long (if (>= _value2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value2 s)(write-long (if (>= _value2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
      (setf _value1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
      (setf _value2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass demo_package::AddTwoIntsResponse
  :super ros::object
  :slots (_valuesum ))

(defmethod demo_package::AddTwoIntsResponse
  (:init
   (&key
    ((:valuesum __valuesum) 0)
    )
   (send-super :init)
   (setq _valuesum (round __valuesum))
   self)
  (:valuesum
   (&optional __valuesum)
   (if __valuesum (setq _valuesum __valuesum)) _valuesum)
  (:serialization-length
   ()
   (+
    ;; int64 _valuesum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _valuesum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _valuesum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _valuesum) (= (length (_valuesum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_valuesum . bv) 0) 0) s)
              (write-long (ash (elt (_valuesum . bv) 1) -1) s))
             ((and (class _valuesum) (= (length (_valuesum . bv)) 1)) ;; big1
              (write-long (elt (_valuesum . bv) 0) s)
              (write-long (if (>= _valuesum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _valuesum s)(write-long (if (>= _valuesum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _valuesum
#+(or :alpha :irix6 :x86_64)
      (setf _valuesum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _valuesum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass demo_package::AddTwoInts
  :super ros::object
  :slots ())

(setf (get demo_package::AddTwoInts :md5sum-) "65195ed2ab3a9b46e6b1bc2c5421f933")
(setf (get demo_package::AddTwoInts :datatype-) "demo_package/AddTwoInts")
(setf (get demo_package::AddTwoInts :request) demo_package::AddTwoIntsRequest)
(setf (get demo_package::AddTwoInts :response) demo_package::AddTwoIntsResponse)

(defmethod demo_package::AddTwoIntsRequest
  (:response () (instance demo_package::AddTwoIntsResponse :init)))

(setf (get demo_package::AddTwoIntsRequest :md5sum-) "65195ed2ab3a9b46e6b1bc2c5421f933")
(setf (get demo_package::AddTwoIntsRequest :datatype-) "demo_package/AddTwoIntsRequest")
(setf (get demo_package::AddTwoIntsRequest :definition-)
      "int64 value1 
int64 value2
---
int64 valuesum
")

(setf (get demo_package::AddTwoIntsResponse :md5sum-) "65195ed2ab3a9b46e6b1bc2c5421f933")
(setf (get demo_package::AddTwoIntsResponse :datatype-) "demo_package/AddTwoIntsResponse")
(setf (get demo_package::AddTwoIntsResponse :definition-)
      "int64 value1 
int64 value2
---
int64 valuesum
")



(provide :demo_package/AddTwoInts "65195ed2ab3a9b46e6b1bc2c5421f933")


