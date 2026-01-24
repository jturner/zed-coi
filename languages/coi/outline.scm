; Coi outline/symbols for Zed's outline panel

; Component definitions
(component_definition
  name: (identifier) @name) @item

; Type definitions
(type_definition
  name: (identifier) @name) @item

; Struct definitions
(struct_definition
  name: (identifier) @name) @item

; Enum definitions
(enum_definition
  name: (identifier) @name) @item

; Function definitions
(function_definition
  name: (identifier) @name) @item

; Method definitions
(method_definition
  name: (identifier) @name) @item

; View blocks
(view_block) @item
((_) @context
  .
  (view_block) @name)

; Style blocks
(style_block) @item
((_) @context
  .
  (style_block) @name)

; Init blocks
(init_block) @item
((_) @context
  .
  (init_block) @name)

; Mount blocks
(mount_block) @item
((_) @context
  .
  (mount_block) @name)

; Tick blocks
(tick_block) @item
((_) @context
  .
  (tick_block) @name)

; App blocks
(app_block) @item
