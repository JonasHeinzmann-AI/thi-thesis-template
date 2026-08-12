# THI thesis template (LaTeX)

A bachelor thesis skeleton for Technische Hochschule Ingolstadt, built around
KOMA-Script `scrbook`, `biblatex`/biber and `glossaries-extra`. It ships the
front matter a THI thesis needs, including the **declaration of authorship in
its current form, with the AI-usage paragraph**.

There is no content here. Every chapter is an empty stub, so a first
`latexmk -pdf main.tex` gives you a correctly formatted, entirely blank thesis.

## Build

```
latexmk -pdf main.tex
```

You need a TeX distribution with `biber` and `makeglossaries`. `latexmkrc` wires
both in, so one command is enough. TeX Live 2023 or newer, or MacTeX.

## What to edit

`metadata.tex` holds every piece of metadata: title, author, faculty, examiners,
dates. Nothing else in the template hard-codes any of it, so that one file is
usually the only thing you touch before your first compile.

The margins are set explicitly by `geometry` in `preamble/packages.tex`, at
30 mm left and 20 mm right, which is the THI convention. KOMA's own `DIV`/`BCOR`
mechanism is deliberately not used, because the two conflict.

## The declaration of authorship

`frontmatter/declaration.tex` carries the wording that extends the old
declaration with the AI-usage paragraph: AI-generated content must be marked,
with orthographic corrections, translations and non-substantive rewording
exempt, and the author affirms that their own cognitive and creative
contribution predominates.

Two things about that file are worth knowing before you rely on it.

The source slide was marked as a preliminary version, and it drops the clause
"that I have not presented it elsewhere for examination purposes", which the
older published template does contain. Both the German original and the older
English wording are preserved as comments at the foot of the file, so switching
is a one-line edit.

**Confirm the current wording with your Prüfungsamt before submitting.** A
template cannot do that for you, and the requirements change.

## Layout

```
main.tex              document structure, nothing else
metadata.tex          title, author, examiners, dates
preamble/             packages.tex, style.tex
frontmatter/          title page, declaration, abstracts, acronyms, symbols
chapters/             six empty chapter stubs
appendix/             one empty appendix stub
bibliography/         references.bib
figures/              drop your figures here
```

## Licence

The LaTeX scaffolding is free to reuse. The declaration wording is quoted from
THI's own template and belongs to the university; treat it as a convenience
copy rather than an authoritative source, and check it against the current
official version.
