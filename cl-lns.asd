;;;; cl-lns.asd

(asdf:defsystem #:cl-lns
  :serial t
  :version "0.0.1"
  :description "ln-s.net URL shortener interface"
  :author "Ricardo Lanziano <arpunk@cryptolab.net>"
  :license "GPLv3"
  :depends-on (#:drakma
               #:cl-ppcre)
  :components ((:module "src"
                        :components ((:file "cl-lns"))))
  :in-order-to ((test-op (load-op cl-lns-test))))
