; ;;extends
;
; ;; Keywords
; (("true"     @keyword) (#set! conceal "⊤"))
; (("false"    @keyword) (#set! conceal "⊥"))
; (("&&"       @keyword) (#set! conceal "∧"))
; (("||"       @keyword) (#set! conceal "∨"))
; ; (("!"        @keyword) (#set! conceal "¬"))
; (("loop"     @keyword) (#set! conceal "∞"))
; (("while"    @keyword) (#set! conceal "⥁"))
; (("return"   @keyword) (#set! conceal "◀"))
; (("break"    @keyword) (#set! conceal "◁"))
; (("continue" @keyword) (#set! conceal ""))
; (("for"      @keyword) (#set! conceal "∀"))
; (("in"       @keyword) (#set! conceal "∈"))
;
; ; (("match"    @keyword) (#set! conceal "▼"))
; (("match"    @keyword) (#set! conceal "⚟"))
; (("if"       @keyword) (#set! conceal "▶"))
; (("else"     @keyword) (#set! conceal "■"))
; (("fn"       @keyword) (#set! conceal "λ"))
;
; ; primitive types (bool, nat, int)
; ((primitive_type) @type.builtin (#eq? @type.builtin "bool") (#set! conceal "𝔹"))
; ((primitive_type) @type.builtin (#eq? @type.builtin "nat") (#set! conceal "ℕ"))
; ((primitive_type) @type.builtin (#eq? @type.builtin "int") (#set! conceal "ℤ"))
; ((primitive_type) @type.builtin (#eq? @type.builtin "char") (#set! conceal "∁"))
; ((primitive_type) @type.builtin (#eq? @type.builtin "str") (#set! conceal "𝐒"))
;
; ; Ok and Err variants
; ((identifier) @constant.builtin (#eq? @constant.builtin "Ok") (#set! conceal "✓"))
; ((identifier) @constant.builtin (#eq? @constant.builtin "Err") (#set! conceal "✗"))
;
; ; Some and None variants
; ((identifier) @constant.builtin (#eq? @constant.builtin "Some") (#set! conceal "⚄"))
; ((identifier) @constant.builtin (#eq? @constant.builtin "None") (#set! conceal "⚀"))
;
;
