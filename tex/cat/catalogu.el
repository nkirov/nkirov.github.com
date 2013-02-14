; A quick hack for now to tune BibTeX mode for editting the catalogue.
;
; Adds a new entry type called TeXIndex with its own collection of
; fields.
;
; Add to menu and as keybinding C-c C-e C-t
;
; Tue 1996-06-25 10:33:31 Graham.Williams@cbr.dit.csiro.au

(make-variable-buffer-local 'bibtex-mode-user-optional-fields)
(make-variable-buffer-local 'bibtex-include-OPTkey)
(make-variable-buffer-local 'bibtex-include-OPTannote)

(setq bibtex-entry-field-alist
  (cons '("TeXIndex" . 
	  ((
	    (("abstract" "Brief description of the package."))
	    (("author" "Author1 [and Author2 ...] [and others]")
	     ("ctan" "Relative location of the package on CTAN")
	     ("url" "Source location of the package or author")
	     ("email" "Email address of author")
	     ("psdoc" "url for Postscript documentation")
	     ("keywords" "Comma separated list of keywords")
	     ("version" "")
	     ("platform" "Could be \LaTeX2e{}, for example")
	     ("copying" "License arrangement.")
	     ("also" "Cross reference to other package names in this database.")
	     ("modified" "Date of last modification to this database entry.")))))
	bibtex-entry-field-alist))

(setq bibtex-mode-user-optional-fields nil)
(setq bibtex-include-OPTkey nil)
(setq bibtex-include-OPTannote nil)

(defun bibtex-TeXIndex ()
  "Add an entry for a TeXIndex entry."
  (interactive)
  (bibtex-entry "TeXIndex"))

(define-key bibtex-mode-map "\C-c\C-e\C-t" 'bibtex-TeXIndex)

(define-key bibtex-mode-map [menu-bar entry-types bibtex-TeXIndex]
  '("TeX Index" . bibtex-TeXIndex))
