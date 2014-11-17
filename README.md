SMoore-Deedy-Resume
=========================

A **one page**, **two asymmetric column** resume template in **XeTeX**, based on [Deedy-Resume](https://github.com/deedydas/Deedy-Resume), catering to a grad student with research and teaching experience who is looking for a one-sheet "quick look" CV alternative for private sector work.
Like [Deedy-Resume](https://github.com/deedydas/Deedy-Resume), but with a slightly different implementation, the user has the option to choose from two classes, each utilizing one serif and one sans serif font face:

1. **paidfonts** - uses fonts that are available for purchase but are not native to any operating system - *Avenir Next* (Ultra Light and Regular) and *Archer* (Book and Bold).
2. **openfonts** - uses free open sourced variants that resemble the above. Here, *Source Sans Pro* (ExtraLight, Light, and Regular) and *Roboto Slab* (Light and Bold) are used.  These fonts are not distributed with this package but can be downloaded from [Google Fonts](http://www.google.com/fonts).

Again like [Deedy-Resume](https://github.com/deedydas/Deedy-Resume), it is licensed under the Apache License 2.0.  See [Deedy-Resume](https://github.com/deedydas/Deedy-Resume) for other details.

## Preview

### openfonts
![alt tag](https://raw.githubusercontent.com/saraemoore/SMoore-Deedy-Resume/master/sample-openfonts.png)

### paidfonts
![alt tag](https://raw.githubusercontent.com/saraemoore/SMoore-Deedy-Resume/master/sample-paidfonts.png)

## Compilation

1. Compiles only with **XeTeX** and required **BibTex** for compiling publications and the .bib filetype.
2. Required fonts must be installed prior to compilation.
3. Class should be changed on line 25 of `smoore-deedy-resume.xtx` to either `openfonts-smoore-deedy-resume` or `paidfonts-smoore-deedy-resume` depending on which the user would like to use.

To compile:
```
    xelatex smoore-deedy-resume.xtx
    bibtex smoore-deedy-resume
    xelatex smoore-deedy-resume.xtx
    xelatex smoore-deedy-resume.xtx
```