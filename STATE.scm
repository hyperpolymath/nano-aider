;;; STATE.scm - Project Checkpoint
;;; nano-aida
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.2.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-17")
    (project . "nano-aida")
    (repo . "github.com/hyperpolymath/nano-aida")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "nano-aida")
    (tagline . "Ada/SPARK TUI with formal verification")
    (version . "0.2.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold-target")

    (tech-stack
     ((primary . "Ada/SPARK")
      (tui . "Terminal_Interface.Curses")
      (ci-cd . "GitHub Actions + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard + SPARK Prover")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.2 - Ada/SPARK Migration Complete")
    (overall-completion . 45)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "SHA-pinned actions, SPDX headers, multi-platform CI")))

      (ada-migration
       ((status . "complete")
        (completion . 100)
        (notes . "Ruby TUI migrated to Ada/SPARK with formal contracts")))

      (documentation
       ((status . "updated")
        (completion . 60)
        (notes . "README, architecture, migration guide updated")))

      (testing
       ((status . "basic")
        (completion . 30)
        (notes . "Test mode implemented, CI pipeline ready")))

      (spark-verification
       ((status . "in-progress")
        (completion . 25)
        (notes . "SPARK annotations added, prover integration pending")))

      (core-functionality
       ((status . "foundation")
        (completion . 40)
        (notes . "Basic TUI with state machine implemented")))))

    (working-features
     ("RSR-compliant CI/CD pipeline"
      "Multi-platform mirroring (GitHub, GitLab)"
      "SPDX license headers on all files"
      "SHA-pinned GitHub Actions"
      "Ada/SPARK TUI with formal contracts"
      "Test mode for CI verification"
      "Alire package configuration"))))

;;;============================================================================
;;; ROUTE TO MVP
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Stable Ada/SPARK TUI with full formal verification")

    (milestones
     ((v0.2
       ((name . "Ada Migration - COMPLETE")
        (status . "complete")
        (completed . "2025-12-17")
        (items
         ("Migrate Ruby TUI to Ada/SPARK"
          "Add SPARK annotations for state machine"
          "Update CI/CD for Ada builds"
          "Update all project metadata"))))

      (v0.3
       ((name . "SPARK Verification")
        (status . "next")
        (items
         ("Complete SPARK proof obligations"
          "Add runtime assertion monitoring"
          "Implement comprehensive unit tests"
          "GNATprove level 2+ verification"))))

      (v0.4
       ((name . "TUI Features")
        (status . "pending")
        (items
         ("Add menu system"
          "Implement configuration editing"
          "Add syntax highlighting support"
          "Keyboard shortcut customization"))))

      (v0.5
       ((name . "Feature Complete")
        (status . "pending")
        (items
         ("All planned TUI features implemented"
          "Test coverage > 70%"
          "API stability freeze"
          "Performance benchmarks"))))

      (v0.8
       ((name . "Beta Release")
        (status . "pending")
        (items
         ("Full SPARK proof coverage"
          "Security audit completed"
          "Beta user documentation"
          "Installation packages"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("100% SPARK proven code paths"
          "Complete user documentation"
          "Performance optimized"
          "Multi-platform releases"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers

    (high-priority
     ())  ;; No high-priority blockers

    (medium-priority
     ((test-coverage
       ((description . "Limited test infrastructure")
        (impact . "Risk of regressions")
        (needed . "Comprehensive test suites")))))

    (low-priority
     ((documentation-gaps
       ((description . "Some documentation areas incomplete")
        (impact . "Harder for new contributors")
        (needed . "Expand documentation")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Run SPARK prover on TUI module" . high)
      ("Add unit tests for state transitions" . high)
      ("Verify CI pipeline succeeds" . high)))

    (this-week
     (("Complete SPARK proof obligations" . high)
      ("Add integration tests" . medium)
      ("Document SPARK contracts" . medium)))

    (this-month
     (("Reach v0.3 milestone" . high)
      ("Begin TUI feature development" . medium)
      ("Create contributor guide" . low)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-17")
      (session . "ada-spark-migration")
      (accomplishments
       ("Renamed project from nano-ruber to nano-aida"
        "Migrated Ruby TUI to Ada/SPARK"
        "Added SPARK annotations with formal contracts"
        "Updated all SCM files (guix.scm, META.scm, etc.)"
        "Updated CI/CD for Ada builds"
        "Fixed security.txt expiry placeholder"
        "SHA-pinned GitHub Actions"))
      (notes . "Complete migration to Ada/SPARK with formal verification"))
     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created via automated script")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "nano-aida")
    (version . "0.2.0")
    (overall-completion . 40)
    (next-milestone . "v0.3 - SPARK Verification")
    (critical-blockers . 0)
    (high-priority-issues . 0)
    (updated . "2025-12-17")))

;;; End of STATE.scm
