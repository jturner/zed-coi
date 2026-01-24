; Text objects for Coi in Zed
; Enables vim-style text object navigation

; Function text objects
(function_definition) @function.around
(function_definition
  (block) @function.inside)

(method_definition) @function.around
(method_definition
  (block) @function.inside)

; Class/component text objects
(component_definition) @class.around
(component_definition
  (component_body) @class.inside)

(type_definition) @class.around
(type_definition
  (type_body) @class.inside)

(struct_definition) @class.around
(struct_definition
  (struct_body) @class.inside)

(enum_definition) @class.around
(enum_definition
  (enum_body) @class.inside)

; Block text objects
(block) @block.around

; Parameter text objects
(parameter_list) @parameter.around
(parameter) @parameter.inside

; Comment text objects
(comment) @comment.around
(comment) @comment.inside

; Conditional text objects
(if_statement) @conditional.around
(if_statement
  consequence: (block) @conditional.inside)

; Loop text objects
(for_statement) @loop.around
(for_statement
  body: (block) @loop.inside)

(while_statement) @loop.around
(while_statement
  body: (block) @loop.inside)

; Call text objects
(call_expression) @call.around
(call_expression
  (argument_list) @call.inside)

; View blocks
(view_block) @block.around

; Style blocks
(style_block) @block.around
