;;;; cl-lns-test.lisp

(in-package :cl-user)
(defpackage cl-lns-test
  (:use :cl
        :cl-lns
        :cl-test-more))
(in-package :cl-lns-test)

(plan 2)

(defvar *test-url* "http://www.gnu.org/")

(setf *test-res* (cl-lns:lnsify *test-url*))

(ok *test-res* "URL shortened")

(is *test-res* "http://ln-s.net/1EQB"
    "gnu.org is indeed shortened")

(finalize)
