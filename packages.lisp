;;;; package.lisp

(defpackage #:json-false
  (:use #:cl)
  (:export #:json-bool))

(defpackage #:nats.connection
  (:use #:cl)
  (:export #:connection
           #:name-of
           #:host-of
           #:port-of
           #:user-of
           #:password-of
           #:state-of
           #:socket-of
           #:stream-of
           #:thread-of
           #:inc-sid
           #:set-subscription-handler
           #:get-subscription-handler
           #:connectedp
           #:not-connected-p
           #:wait-for-connection))

(defpackage #:nats.subject
  (:use #:cl)
  (:export #:subject))

(defpackage #:nats.vars
  (:use #:cl)
  (:export #:*host*
           #:*port*
           #:*client-name*
           #:*version*
           #:*encoding*
           #:*debug*
           #:*verbose*))

(defpackage #:nats.io
  (:use #:cl #:rutils.anaphora #:json-false #:nats.connection #:nats.vars)
  (:export #:nats-read
           #:nats-write
           #:make-reader-thread))

(defpackage #:nats
  (:use #:cl #:nats.connection #:nats.subject #:nats.vars #:nats.io)
  (:export #:make-connection
           #:connect
           #:subscribe
           #:unsubscribe
           #:publish
           #:request
           #:disconnect
           #:with-connection

           ;; Re-exported from nats.connection
           #:connection
           #:name-of
           #:host-of
           #:port-of
           #:user-of
           #:password-of
           #:state-of
           #:socket-of
           #:stream-of
           #:thread-of
           #:inc-sid
           #:set-subscription-handler
           #:get-subscription-handler
           #:connectedp
           #:not-connected-p
           #:wait-for-connection

           ;; Re-exported from nats.connection
           #:*host*
           #:*port*
           #:*client-name*
           #:*encoding*
           #:*debug*
           ))

