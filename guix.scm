;; nano-aida - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnu)
             ((guix licenses) #:prefix license:)
             (gnu packages base)
             (gnu packages ada))

(define-public nano_aida
  (package
    (name "nano-aida")
    (version "0.2.0")
    (source (local-file "." "nano-aida-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnu-build-system)
    (native-inputs (list gnat))
    (synopsis "Ada/SPARK TUI application - RSR ecosystem")
    (description "Ada/SPARK TUI application with formal verification - part of the RSR ecosystem.")
    (home-page "https://github.com/hyperpolymath/nano-aida")
    (license license:agpl3+)))

;; Return package for guix shell
nano_aida
