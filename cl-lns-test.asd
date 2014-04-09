;;;; cl-lns-test.asd
(in-package :cl-user)
(defpackage cl-lns-test-asd
  (:use :cl :asdf))
(in-package :cl-lns-test-asd)

(asdf:defsystem #:cl-lns-test
  :serial t
  :version "0.0.1"
  :author "Ricardo Lanziano <arpunk@cryptolab.net>"
  :license "GPLv3"
  :depends-on (#:cl-lns
               #:cl-test-more)
  :components ((:module "t"
                :components ((:file "cl-lns"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
