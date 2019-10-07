(defparameter *upper* 1024)
(defparameter *lower* 1)

(defun guess-my-number ()
  (ash (+ *lower* *upper*) -1))

(defun smaller ()
  (setf *upper* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *lower* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *upper* 1024)
  (defparameter *lower* 1)
  (guess-my-number))
