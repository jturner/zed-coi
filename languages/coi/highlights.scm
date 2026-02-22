; Coi syntax highlighting for Zed

; Comments
(comment) @comment

; Keywords - definitions
[
  "component"
  "pod"
  "def"
  "struct"
  "type"
  "enum"
  "app"
  "import"
  "module"
  "extends"
  "match"
] @keyword

; Keywords - blocks
[
  "view"
  "style"
  "tick"
  "init"
  "mount"
  "router"
  "global"
] @keyword

; Keywords - control flow
[
  "if"
  "else"
  "for"
  "while"
  "return"
  "yield"
  "in"
] @keyword.control

; Keywords - modifiers
[
  "mut"
  "pub"
  "shared"
] @keyword.modifier

; Boolean literals
[
  "true"
  "false"
] @constant.builtin

; Built-in types
(builtin_type) @type.builtin

; Strings
(string) @string
(template_string) @string
(escape_sequence) @string.escape

; Numbers
(integer) @number
(float_literal) @number
(hex_literal) @number
(binary_literal) @number

; Annotations
(annotation
  "@" @attribute
  (identifier) @attribute)

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
  "&="
  "|="
  "^="
  "<<="
  ">>="
  "=="
  "!="
  "<="
  ">="
  "&&"
  "||"
  "!"
  "|"
  "^"
  "~"
  "<<"
  ">>"
  "=>"
  ":="
  "?"
] @operator

; Punctuation - brackets
[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

; Punctuation - XML-style brackets in views
[
  "<"
  ">"
  "/>"
  "</"
] @punctuation.bracket

; Punctuation - delimiters
[
  ";"
  ","
  "."
  ":"
  "&"
] @punctuation.delimiter

; Component definitions
(component_definition
  name: (identifier) @type)

; Pod definitions
(pod_definition
  name: (identifier) @type)

; Type definitions
(type_definition
  name: (identifier) @type)

; Struct definitions
(struct_definition
  name: (identifier) @type)

; Enum definitions
(enum_definition
  name: (identifier) @type)

; Enum variants
(enum_variant
  name: (identifier) @constant)

; Function definitions
(function_definition
  name: (identifier) @function)

; Method definitions
(method_definition
  name: (identifier) @function.method)

; Parameters
(parameter
  type: (_) @type
  name: (identifier) @variable.parameter)

; Field definitions
(field_definition
  type: (_) @type
  name: (identifier) @property)

; Variable declarations
(variable_declaration
  type: (_) @type
  name: (identifier) @variable)

; Function calls
(call_expression
  function: (identifier) @function.call)

; Method calls
(call_expression
  function: (member_expression
    property: (identifier) @function.method.call))

; Member/property access
(member_expression
  property: (identifier) @property)

; Namespace access (Enum::Variant or Module::Component)
(namespace_expression
  namespace: (identifier) @type
  name: (identifier) @constant)

; Match patterns
(else_pattern) @keyword.control

(enum_pattern
  type: (identifier) @type
  variant: (identifier) @constant)

(pod_pattern
  type: (identifier) @type)

(pod_field_pattern
  name: (identifier) @property)

(variant_pattern
  type: (identifier) @type
  param_name: (identifier) @variable.parameter)

; Route definitions
(route_definition
  path: (string) @string.special
  component: (identifier) @type)

; App properties
(app_property
  name: (identifier) @property)

; View elements - tag names
(element
  tag: (identifier) @tag)

; View attributes
(attribute
  name: (identifier) @attribute)

; Import paths
(import_statement
  path: (string) @string.special)

; Module names
(module_statement
  name: (identifier) @namespace)

; Fallback - all other identifiers
(identifier) @variable
