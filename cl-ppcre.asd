;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-
;;; $Header: /home/manuel/bknr-cvs/cvs/thirdparty/cl-ppcre/cl-ppcre.asd,v 1.1 2004/06/23 08:27:10 hans Exp $

;;; This ASDF system definition was kindly provided by Marco Baringer.

;;; Copyright (c) 2002-2003, Dr. Edmund Weitz.  All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(defpackage #:cl-ppcre.system
  (:use #:cl
        #:asdf))

(in-package #:cl-ppcre.system)

(defsystem #:cl-ppcre
    :components ((:file "packages")
                 (:file "specials" :depends-on ("packages"))
                 (:file "util" :depends-on ("packages"))
                 (:file "errors" :depends-on ("util"))
                 (:file "lexer" :depends-on ("errors" "specials"))
                 (:file "parser" :depends-on ("lexer"))
                 (:file "regex-class" :depends-on ("parser"))
                 (:file "convert" :depends-on ("regex-class"))
                 (:file "optimize" :depends-on ("convert"))
                 (:file "closures" :depends-on ("optimize" "specials"))
                 (:file "repetition-closures" :depends-on ("closures"))
                 (:file "scanner" :depends-on ("repetition-closures"))
                 (:file "api" :depends-on ("scanner"))))
