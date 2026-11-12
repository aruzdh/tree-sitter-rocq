# Issues and Notes

[Back to README](../README.md)

Even though the rules are based on the official ones, most have minor workarounds
due to Tree-sitter's limitations (e.g., its one-token-lookahead nature or the
restriction on matching empty strings). Plus, several (hidden) rules were added
to improve maintainability and readability. The most notable cases are shown below.

## Software Foundations, Vol. 1

Missing feature = not implemented; Incomplete = partial; Custom = intentional deviation.

| Feature / Rule | Missing Feature | Incomplete | Custom | Notes and Refs |
| :--- | :---: | :---: | :---: | :--- |
| **`Coercion`** | | ● | | Only the `coercion_class` variant is implemented ([ref](https://rocq-prover.org/doc/V9.2.0/refman/addendum/implicit-coercions.html#coq:cmd.Coercion)). |
| **`_def_body`** | ● | | | Missing `reduce` ([ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/definitions.html#coq:cmd.Theorem)). |
| **`Inductive`** | | ● | | Missing `record_definition` variant and `cumul_univ_decl` ([ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/inductive.html#coq:cmd.Inductive)). |
| **`Arguments`** | | ● | | [ref](https://rocq-prover.org/doc/V9.2.0/refman/language/extensions/arguments-command.html#coq:cmd.Arguments). |
| **`Module`** | | ● | | [ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/modules.html#coq:cmd.Module). |
| **`binder`** | ● | | | Missing `generalizing_binder` ([ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/assumptions.html#grammar-token-binder)). |
| **`ident_decl`** | ● | | | Missing `univ_decl` ([ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/assumptions.html#grammar-token-ident_decl)). |
| **`assert`** | ● | | | Uses a variant of [as_ipat](https://rocq-prover.org/doc/V9.2.0/refman/proof-engine/tactics.html#grammar-token-as_ipat). |
| **`in_clause`** | | ● | | Variant of [occurrences](https://rocq-prover.org/doc/V9.2.0/refman/proof-engine/tactics.html#grammar-token-occurrences). |
| **`as_clause`** | | ● | | Variant of [as_ipat](https://rocq-prover.org/doc/V9.2.0/refman/proof-engine/tactics.html#grammar-token-as_ipat). |
| **`intro_pattern`** | | ● | | Variant of [intropattern](https://rocq-prover.org/doc/V9.2.0/refman/proof-engine/tactics.html). |
| **`pattern`** | | ● | | [ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/variants.html#definition-by-cases-match). |
| **`term`** | | ● | | [ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/basic.html#grammar-token-term). |
| **Tactics, Tacticals, and Ltac** | | | ● | Uses a generalized tactic rule; tacticals support a minimal set (`repeat`, `try`); ltac is defined in terms of `_ltac_expr` rule ([ref](https://rocq-prover.org/doc/V9.2.0/refman/proof-engine/ltac.html#grammar-token-ltac_expr)). |
| **`Hint`** | | | ● | Uses a generalized version of the [official rule](https://rocq-prover.org/doc/V9.2.0/refman/proofs/automatic-tactics/auto.html). |
| **`evaluation_command`** | | | ● | Uses a unified rule to cover `Check`, `Compute`, `Print`, `Search`, and `Locate`. |
| **`_qualid_annotated`** | ● | | | Missing `univ_annot` ([ref](https://rocq-prover.org/doc/V9.2.0/refman/language/core/basic.html#grammar-token-qualid_annotated)). |

- `Eval` command hasn't been implemented
([ref](https://rocq-prover.org/doc/V9.2.0/refman/proofs/writing-proofs/equality.html#rocq:cmd.Eval).).
