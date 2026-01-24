; Coi language injections for Zed
; Enables CSS syntax highlighting inside style blocks

; Inject CSS into style blocks
((style_block) @content
  (#set! "language" "css"))

; Alternative pattern for style block content
(style_block
  (style_content) @content
  (#set! "language" "css"))
