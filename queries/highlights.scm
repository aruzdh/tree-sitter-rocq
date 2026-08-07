(ident (#set! "priority" 50)) @variable
(dotted_qualid (#set! "priority" 50) ) @variable.qualid
(metavariable) @variable.metavariable
(number) @number
(decnat) @number
(hexnat) @number
(string) @string
(wildcard) @variable.builtin
(comment) @comment
(bullet (#set! "priority" 50)) @punctuation.special
((bullet) @proof.dash
  (#match? @proof.dash "^-+$"))

((bullet) @proof.plus
  (#match? @proof.plus "^\\++$"))

((bullet) @proof.star
  (#match? @proof.star "^\\*+$"))

(proof_block (#set! "priority" 110) "{" @proof.block)
(proof_block (#set! "priority" 110) "}" @proof.block)


[
 "Local" "Global" "Polymorphic" "Monomorphic" "Cumulative" "NonCumulative"
 "Private" "Program" "all" "par" "Arguments" "context"
 "in" "custom" "left" "right" "no" "associativity" "only"
 "parsing" "printing" "format" "scope" "at" "ident"
 "name" "global" "bigint" "strict" "pattern" "binder"
 "closed" "constr" "as" "level" "next"
 "by" "using" "eqn"
] @keyword.modifier

[
  "From" "Require" "Import" "Export"
] @keyword.directive.import

[
 "Create" "HintDb" "Rewrite"
] @keyword.directive.database

(discriminated_db) @keyword.directive.database.discriminated

[
 "Hint" "Resolve" "Constructors" "Unfold"
 "Immediate" "Transparent" "Opaque" "Extern"
] @keyword.directive.hint

[
  "Check" "Compute" "Print" "Search" "Locate"
  "Set" "Unset" "Add" "Remove" "Test" "for"
  "Show" "Diffs" "removed"
  "Coercion" "Declare" "Scope" "Custom" "Entry" "Open" "Close"
  "Inline" 
  "AccessOpaque" "AutoInline" "Blacklist" "Callback" "Comment"
  "Constant" "Conservative" "Directory" "Extract" "Extraction"
  "File" "Flag" "Foreign" "Implicit" "Inductive" "Inline"
  "Inlined" "KeepSingleton" "Language" "Library" "NoInline"
  "Optimize" "Output" "Recursive" "SafeImplicits" "Separete"
  "TestCompile" "TypeExpand" "Types"
] @keyword.directive

[
 "OCaml" "Haskell" "Scheme" "JSON"
] @keyword.declaration.language

(fail) @keyword.directive.fail

[
  "Theorem" "Lemma" "Fact" "Remark" "Corollary" "Proposition" "Property"
  "Definition" "Example" "Fixpoint"
  "Axiom" "Axioms" "Conjecture" "Conjectures" "Parameter" "Parameters"
  "Hypothesis" "Hypotheses" "Variable" "Variables"
] @keyword.declaration

[ "Inductive" ] @keyword.declaration.inductive

[
 "Section" "Module" "End"
] @keyword.module

[
 "Reserved" "Notation"
] @keyword.notation

[
 "with" "struct" "wf" "measure" "where" "and"
 "Proof" "Save" "Defined"
 "All"
 "fun" "forall" "exists"
 "let" "match" "return" "end"
 "if" "then" "else"
 "fix" "for"
 "lazymatch" "multimatch" "reverse" "goal"
] @keyword.control

(qed_command) @keyword.control
(admitted_command) @keyword.control
(abort_command) @keyword.control.abort


[
 "intros" "intro" "assert" "rewrite"
] @keyword.tactic

[
 "repeat" "try"
] @keyword.tactical

[ "Ltac" ] @keyword.directive.ltac

[ "Type" "Funclass" "Sortclass" ] @type.builtin

[
  ":=" "=>" "->" "<-" "<->" ">->"
  "=" "<>" "<" "<=" ">" ">="
  "=?" "<>?" "<?" "<=?" ">?" ">=?"
  "+" "-" "*" "/" "%"
  "||" "|" "::" "++" "@"
  "/\\" "\\/" "~" "?" "&" "!"
  "|-"
  ":>" "::>"
  "=[" "]=>"
  "<:" "<<:" ":>"
] @operator

[
  "." "..." "," ";" ":"
] @punctuation.delimiter

[
  "(" ")" "[" "]" "#"
  "<{" "}>" "[|" "|]" "{|" "|}"
] @punctuation.bracket

[ "{" "}" ] @punctuation.bracket.braces


(require_command dirpath: (_) @module.path)
(neg_selection) @operator
(import_categories category: (_) @variable)
(filtered_import module: (ident) @module.name)
(filtered_import module: (dotted_qualid) @module.name)
(filtered_import_item name: (_) @variable)
(import_wildcard) @punctuation.special

(create_hintdb_command name: (_) @variable.database)
(create_rewrite_hintdb_command name: (_) @variable.database)
(hint_command name: (_) @variable)
(hint_command database: (_) @variable.database)
(hint_extern database: (_) @variable.database)

(setting_name) @variable.config
(coercion_command name: (_) @variable)
(declare_command name: (_) @variable.scope)
(open_scope_command name: (_) @variable.scope)
(close_scope_command name: (_) @variable.scope)
(notation_scope scope_name: (_) @variable.scope)

(ident_decl) @function
(assumpt (ident_decl) @variable.parameter)
(inductive_definition name: (_) @type.definition)
(constructor name: (_) @constructor)

(section_command (ident) @module.name)
(module_command (ident) @module.name)
(end_command (ident) @module.name)

(save_command (ident) @function)
(defined_command (ident) @function)

(binder (ident) @variable.parameter)
(binder (dotted_qualid) @variable.parameter)

(let_expression name: (_) @variable.definition)
(let_expression pattern: (let_expression_name_list (ident) @variable.definition))
(let_expression pattern: (destructuring_pattern (_) @variable.definition))

(fix_decl name: (_) @function)
(term_as_clause as_name: (_) @variable.parameter)
(pattern_application . (_) @constructor)

(generic_tactic name: (_) @keyword.tactic)
(ltac_definition name: (_) @function.macro)
(bindings name: (_) @variable.parameter)
(intro_pattern (ident) @variable.parameter.tactic)
(match_hyp (ident) @variable.parameter)
(eqn_clause (ident) @variable)

(notation_declaration notation: (string) @string.special)
(attribute (ident) @attribute)
(double_dot) @operator
(custom_operation (custom_operator) @operator)

(range_selector (ident) @variable.builtin)

(application . (ident) @function.call)
(application . (dotted_qualid) @function.call)

((ident) @type.builtin
 (#match? @type.builtin "^(Prop|Set|Type)$"))

(type (ident) @type)
(type (dotted_qualid) @type)
(type (application . (ident) @type))
(type (application . (dotted_qualid) @type))
(type (arrow_term . (ident) @type))
(application (_) . (ident) @type)
(arrow_term (ident) @type)

(match_case (pattern_option pattern: (ident) @constructor))

(generic_tactic_body (atomic_term_with_bindings (ident) @variable.parameter.tactic))
