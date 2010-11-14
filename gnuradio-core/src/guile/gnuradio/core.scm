;;; Glue the separate pieces of gnuradio-core into a single module

(define-module (gnuradio core)
  #:use-module (gnuradio gnuradio_core_runtime)
  #:use-module (gnuradio runtime-shim)
  #:use-module (gnuradio gnuradio_core_filter)
  #:use-module (gnuradio gnuradio_core_io)
  #:use-module (gnuradio gnuradio_core_general)
  #:use-module (gnuradio gnuradio_core_gengen)
  #:use-module (gnuradio gnuradio_core_hier)
  #:duplicates (merge-generics check))

(re-export-all '(gnuradio gnuradio_core_runtime))
(re-export-all '(gnuradio runtime-shim))
(re-export-all '(gnuradio gnuradio_core_filter))
(re-export-all '(gnuradio gnuradio_core_io))
(re-export-all '(gnuradio gnuradio_core_general))
(re-export-all '(gnuradio gnuradio_core_gengen))
(re-export-all '(gnuradio gnuradio_core_hier))

;;; Return #t if x is not #f
(define-public (true? x)
  (and x #t))
