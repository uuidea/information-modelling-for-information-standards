# Standardization, Interoperability & Information Modelling

A LaTeX [Beamer](https://www.ctan.org/pkg/beamer) slide deck — session 1 of the
2-day openADR training on standardization, interoperability, and information
modelling.

Session 1 — what it means to define an information standard, and looking at
openADR through that lens.

Author: [Joep van Genuchten](https://uuidea.eu), uuidea

## What it covers

- What interoperability is — and what it takes
- SGAM (Situational Graph Architecture of Modality) and where openADR lives on it
- The Ship of Theseus, master data, and meaning
- Information modelling 101 (RDF, SKOS, RDFS/OWL, SHACL)
- What it means to define an information standard, and three requirements:
  1. Kinds of information models
  2. MOF, expressivity, and transformation
  3. Ontology alignment and upper ontologies
- In practice: one exchange, from the model (L1) to the artifacts (L3)
- How Netbeheer Nederland manages profiles and schemas
- The yardstick, applied: openADR 3.0
- Takeaways

## Repository layout

```
slides.tex                    master file
slides/                       per-section slide modules (.tex)
figs/                         shared images
code/                        example exchange artifacts referenced in the deck:
                              Avro schema, JSON Schema, SQL DDL,
                              JSON/YAML instance data
beamerthememybusinessbeamertheme.sty   custom theme (based on Madrid)
slides.pdf                     pre-built deck (for quick viewing)
```

## Building

Requires a TeX Live installation with the `beamer` and `listings` packages
(`texlive-latex-extra` and `texlive-science` cover most of what is used):

```sh
latexmk -pdf slides.tex       # handles bibtex + multiple passes
# or manually:
pdflatex slides.tex && pdflatex slides.tex
```

Clean auxiliary files:

```sh
latexmk -c
```

## License

This work is licensed under [Creative Commons Attribution-ShareAlike 4.0
International (CC BY-SA 4.0)](LICENSE). See [NOTICE](NOTICE) and the
[LICENSE](LICENSE) text for details.

If you redistribute this work or an adaptation of it, you must:

- give appropriate credit to Joep van Genuchten (uuidea) and a link to the
  license, and
- distribute your contributions under the same or a compatible license.
