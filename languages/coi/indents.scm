; Coi indentation rules for Zed

; Indent after opening braces
[
  (component_definition)
  (function_definition)
  (method_definition)
  (type_definition)
  (struct_definition)
  (enum_definition)
  (view_block)
  (style_block)
  (init_block)
  (mount_block)
  (tick_block)
  (app_block)
  (router_block)
  (if_statement)
  (else_clause)
  (for_statement)
  (while_statement)
  (block)
] @indent

; Dedent at closing braces
[
  "}"
  "</"
] @outdent

; End markers
[
  "}"
] @end
