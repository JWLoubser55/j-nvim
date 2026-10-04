; extends

[
  ";"
  ","
  ":"
  ".."
] @punctuation.delimiter

[
  ">"
  "<"
  ">="
  "<="
  "="
  "/="
  ":="
  "**"
  "&"
  "+"
  "-"
  "*"
  "/"
] @operator

((tick) @attribute)

(subprogram_body
  endname: (identifier) @function)

(attribute_designator
  (identifier) @attribute)

(full_type_declaration
  (identifier) @type)

(component_definition
  subtype_mark: (identifier) @type)

(parameter_specification
  subtype_mark: (identifier) @type)

(result_profile
  subtype_mark: (identifier) @type)
