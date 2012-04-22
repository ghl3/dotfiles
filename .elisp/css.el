;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; File: css.el
;; Author: Last Modified: Pankaj Kamthan
;; Date: Nov 15, 1998
;; Description: An Emacs module for CSS support in html-helper-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Commentary
;; 1. This code is a revised version of css.el by Jim Tom Polk
;;    available at http://camalott.com/~jtpolk/emacs.html. Many spelling
;;    errors have been corrected and minor additions have been made to the
;;    code. The code has also been better organized.
;; 2. The module must be called after html-helper-mode loads. It runs well
;;    from the html-helper-load-hook.
;; 3. To use the module, put the following in your .emacs file
;;    (add-hook 'html-helper-load-hook
;;      (function (lambda () (load "css.el"))))
;; 4. CSS1 support limited to that built-in MSIE.
;; 5. This code is distributed under the same terms as the original css.el.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Code.

(html-helper-add-type-to-alist
  '(css . (css-html-map "\C-c\C-b" css-html-menu
			   "Insert CSS Elements")))

(html-helper-install-type 'css)

;; External style.

(html-helper-add-tag
  '(css "l" "" "External Style"
	        ( "<link rel=file.css href=\"" (p "HREF: ") "\" type=\"text/css\" title=\"" (p "Title: ") "\">")))

;; Inline style.

(html-helper-add-tag
  '(css "i" "" "Inline Style"
	        ("  style=\"color: " (p "Color: ") "; font-size: " (p "Font Size: ") ";\"")))

;; Padding.

(html-helper-add-tag
 '(css "p" "" "Padding"
             ("\tpadding: " (p "Padding (top-right-bottom-left values): ") ";")))


;; Span.

(html-helper-add-tag
  '(css "s" "<span>" "SPAN Element"
	         ( "<span " (p "Class-Style: ") "=\"" (p "Name of class or Properties: ") "\">" "</span>")))

;; Class.

(html-helper-add-tag
  '(css "C"  "class=" "CLASS Attribute" (" class=\"" (r "Apply Class: ") "\"")))

;; New element.

(html-helper-add-tag
  '(css "e" "Element  " "New Element"
	 ( ""  (r "Element:  ") "    \{\n\n\n\t} /*  */")))

;; Background.

(html-helper-add-tag
  '(css "b" "" "Background" ( "\tbackground-image: url(" (p "Background Image url( ") ");\n" "\tbackground-repeat: " (p "Background Repeat(x-y-no): ") " ;\n" "\tbackground-scroll: " (p "Background Scroll:(scroll-fixed): " ) " ;\n" "\tbackground-position: " (p "Background Position 1: ") " " (p "Background Position 2:")" ;" )))

;; Margins.

(html-helper-add-tag
  '(css "m" "" "Margin" ("\tmargin-top: "(p "Margin Top: ") " ;\n" "\tmargin-bottom: " (p "Margin Bottom: ") " ;\n" "\tmargin-right: " (p "Margin Right: ") " ;\n" "\tmargin-left: " (p "Margin Left: " ) " ;")))

;; Borders.

(html-helper-add-tag
  '(css "B" "" "Border" ("\t border: " (p "Border-Width (thin-medium-thick): ") " " (p "Border-Style (none-solid-double-ridge-inset-outset): ") " " (p "Color (value-black-maroon-navy-red-etc): ") " ;")))

;; Text.

(html-helper-add-tag
  '(css "t" "" "Text" ("\t text-decoration: " (p "Text Decoration (underline-line-through-blink-none): ") " ;\n" "\ttext-align: " (p "Text Align (left-right-center-justify): ") " ;\n" "\ttext-indent: " (p "Text Indent: ") " ;\n" "\tline-height: " (p "Line Height: ") " ;")))

;; Color background and foreground.

(html-helper-add-tag
  '(css "c" "" "Color" ("\tcolor: " (p "Color: ") " ;\n" "\tbackground-color: " (p "Background Color: " ) " ;")))

;; Fonts. Helvetica and Sans-Serif are the default fonts.

(html-helper-add-tag
  '(css "f" "" "Font" ("\tfont-family: " (p "Font Family: ") " \"Helvetica\", sans-serif ;\n" "\tfont-style: " (p "Font Style:(normal-italic-oblique): ") " ;\n" "\tfont-variant: " (p "Font Variant:(normal small-caps): ") " ;\n" "\tfont-weight: " (p "Font Weight:(normal-bold-n00): ") " ;\n" "\tfont-size: " (p "Font Size:(pt-px-em): ")  " ;")))

;; Embedded style sheet template.

(html-helper-add-tag
  '(css "y" "<style>\n" "Embedded Style"
	 ("<style>\n<!--\n/* " (r "General Comments: ") " */\n\nA:link  \{ color: #0000EF ;\}\nA:visited \{ color: #55188A ;\}\nA:active \{ color: #ff0000 ;\}\n" (r "Initial Element: ") "\t\{\n\n\t\}  /*  */\n-->\n</style>")))

(html-helper-rebuild-menu)

(provide 'hhm-css)




