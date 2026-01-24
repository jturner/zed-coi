; Coi syntax highlighting for Zed
; This file maps tree-sitter node types to Zed highlight groups

; Comments
(comment) @comment

; Keywords
[
  "component"
  "def"
  "view"
  "style"
  "tick"
  "init"
  "mount"
  "app"
  "import"
  "struct"
  "type"
  "global"
  "enum"
  "router"
  "extends"
] @keyword

; Control flow keywords
[
  "if"
  "else"
  "for"
  "while"
  "return"
  "in"
] @keyword.control

; Storage modifiers
[
  "mut"
  "pub"
  "shared"
] @keyword.modifier

; Annotations
(annotation) @attribute

; Type annotations
[
  "@nocopy"
  "@builtin"
  "@inline"
  "@map"
  "@intrinsic"
  "@alias"
] @attribute

; Built-in types
[
  "int"
  "int8"
  "int16"
  "int32"
  "int64"
  "uint8"
  "uint16"
  "uint32"
  "uint64"
  "float"
  "float32"
  "float64"
  "void"
  "string"
  "bool"
] @type.builtin

; Boolean literals
[
  "true"
  "false"
] @constant.builtin

; Numeric literals
(number) @number
(integer) @number
(float_literal) @number

; String literals
(string) @string
(escape_sequence) @string.escape

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "%"
  "++"
  "--"
  "="
  "+="
  "-="
  "*="
  "/="
  "%="
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "!"
  "=>"
  ":="
  "&"
  ":"
] @operator

; Punctuation
[
  "{"
  "}"
] @punctuation.bracket

[
  "["
  "]"
] @punctuation.bracket

[
  "("
  ")"
] @punctuation.bracket

[
  "<"
  ">"
  "/>"
  "</"
] @punctuation.bracket

[
  ";"
  ","
  "."
] @punctuation.delimiter

; Component definitions
(component_definition
  name: (identifier) @type)

; Type definitions
(type_definition
  name: (identifier) @type)

; Enum definitions
(enum_definition
  name: (identifier) @type)

; Struct definitions
(struct_definition
  name: (identifier) @type)

; Function definitions
(function_definition
  name: (identifier) @function)

; Method definitions
(method_definition
  name: (identifier) @function.method)

; Function calls
(call_expression
  function: (identifier) @function.call)

; Method calls
(call_expression
  function: (member_expression
    property: (identifier) @function.method.call))

; Member access
(member_expression
  object: (identifier) @variable)

; Property access
(member_expression
  property: (identifier) @property)

; Parameters
(parameter
  name: (identifier) @variable.parameter)

; Variables
(variable_declaration
  name: (identifier) @variable)

; Identifiers (default)
(identifier) @variable

; Type references (capitalized identifiers)
((identifier) @type
  (#match? @type "^[A-Z]"))

; Component instances in view blocks
(element
  tag: (identifier) @type
  (#match? @type "^[A-Z]"))

; HTML elements in view blocks
(element
  tag: (identifier) @tag)

; HTML attributes
(attribute
  name: (identifier) @attribute)

; Event handlers (onclick, onchange, etc.)
((attribute
  name: (identifier) @function)
  (#match? @function "^on[a-z]+"))

; Class attribute special handling
((attribute
  name: (identifier) @attribute)
  (#eq? @attribute "class"))

; Import paths
(import_statement
  path: (string) @string.special)
