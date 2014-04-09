;;;; cl-lns.lisp

(in-package #:cl-lns)

(defvar *lns-api* "http://ln-s.net/home/api.jsp?url=")

(defun lnsify (url)
  "Shortens a URL using ln-s.net."
  (when (stringp url)
    (multiple-value-bind (lnsized code)
        (drakma:http-request (concatenate 'string *lns-api* url))
      (if (= code 200) ;; TODO: check other API codes.
          (remove #\linefeed (subseq lnsized 4))
          (error "Failed to shorten URL: ~a - ~a" code lnsized)))))
