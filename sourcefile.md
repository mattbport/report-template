---
title: Creative Computing report template
author: Harry Potter
date: September 2024
lang: en-GB
csl: apa.csl
bibliography: bib.bib
abstract: In this paper we describe the formatting guidelines for written work on the BSc (Hons) and BA (Hons) Creative Computing courses at the University of Portsmouth. The template is a plain text document intended to be used with Pandoc. The resulting file should be a PDF unless the assessment requires an alternative file format.
---

<!--
`ClearSans` is a good font family option.
-->

# Introduction
We ask you to make your submitted work look exactly like this document. The easiest way to do this is simply to make a copy of the style guide folder and replace the content with your own material.


# Layout

## Page size and fonts
Please use the default output of Pandoc when creating a PDF file. There is no need to change the fonts or the layout. 



## Title and Authors
Pandoc makes use a header block at the beginning of the document. This allows you to set the author name(s), dates, the abstract, and other information. Please see the top of the document for an example. The Pandoc manual[^manual] has more information.

[^manual]: <http://pandoc.org/MANUAL.html>



## Footnotes
Footnotes are added using a simple format[^1]. Please see the template for examples[^name].

[^1]: Here is a footnote.
[^name]: You can use numbers or words to show where footnotes should be inserted.



## Mathematics
Maths can be added in a sentence using dollar symbols, such as $n = ab^2$. A formula outside of a sentence should make use of two dollar symbols at the start and end.

$$v = \sqrt{\frac{\epsilon}{\rho}}$$



## Typesetting code
If you are typesetting code, surround the text with backticks, such as `var pitch = MouseX.kr(0,1,0)`. If you are typesetting a block of code, add three or more backticks above and below the code. You can add syntax highlighting by specifying the language after the first set of backticks. For example, here is some Javascript:

```js
function draw() {
  fill("red"); // with a comment
  circle(200, 200, 20);
  let x1 = 200;
  let y1 = 200;
  let x2 = mouseX;
  let y2 = mouseY;
  let d = dist(x1, y1, x2, y2);
  let v = d / 400;
  print(v);
  sound.setVolume(v);
}
```


## Quotations
Quotations that are embedded in a sentence should make use of single quotation marks. Longer quotations should be indented using the greater-than symbol (>). They are presented as a separate paragraph without quotation marks. A colon should be used to introduce a quotation that is independent from the structure of the main sentence, such as this example from Marc Raibert [-@Raibert1985-ot, p.35]:

> My formula for good writing is simple: once you decide that you want to produce good writing and that you can produce good writing, then all that remains is to write bad stuff, and to revise the bad stuff until it is good.

The indentation will move back to the leftmost edge after the quotation.



## Tables
Tables can be inserted using the following layout.

Style | Name | Shortcut
---|---|---
One | Two | Three
Four | Five | Six



# Referencing
Your references should be formatted following the APA 7th edition guidelines. References should be published materials accessible to the public. Internal technical reports may be cited only if they are easily accessible (i.e. you can give the address to obtain the report within your citation) and may be obtained by any reader. Proprietary information may not be cited. Private communications should be acknowledged, not referenced (e.g. [Robertson, personal communication]).


## Using Pandoc for citation management
Pandoc should be used to manage and format your citations and reference list. Follow the instructions online.

<http://pandoc.org/README.html>

Using a citation without square brackets, as can be seen in @Katz2006-ci [p. 45-48], is a simple task. If you need the author and year of the publication in brackets [@Koopman1997-ag] or just the year [-@Koopman1997-ag] you can follow the simple formatting examples.

More citation examples can be found at <http://pandoc.org/demo/example19/Extension-citations.html>.


# Setting up and running Pandoc
Your BibTeX file and the citation style language (CSL) files need to be on your computer, and Pandoc will need to be told where they are. We recommend keeping your BibTeX and CSL files in a single place and creating a simple script to run Pandoc; we will cover this in lectures.

The CSL file for APA 7th can be found in this collection of CSL files: <https://github.com/citation-style-language/styles>

Direct link: <https://github.com/citation-style-language/styles/blob/master/apa.csl>



## Building your document
This process may seem slightly complicated when you first set it up, but it will save you a lot of time once it is set up as it will handle all your layout and citation management.

This document was created by running the build script (`build.sh`). In order to run it on your computer you must first open a Terminal and `cd` to the folder containing the files. Run the following command to make the build script executable: this only needs to be done once.

```bash
chmod +x build.sh
```

From now on, every time you want to build a new copy of your work simply type the following:

```bash
./build.sh
```

If you want to make other file types (Word document, HTML, ePub etc.) open and follow the instructions in the `build.sh` script. If you are writing a dissertation there is a minor change we recommend in the build file; open it up and follow the instructions.



# Figures and captions

Figures can be added using the format shown below. The caption for the image is in square brackets and the path to the image in parentheses. Images can be hosted online (as seen in @fig:pd) or on your local computer (as in @fig:3d). Refer to the images in the body text as the images will be automatically placed in the most appropriate location.
  
![An example of an image added directly from a URL [@Kinsler2000-hd, p.81]](https://archive.bleu255.com/makeart/2008/images/pure_data-workshop.png){#fig:pd}

![An example of a local image in the same folder as the text file [@Howard2000-dr, p.29]](images/3d-domains.png){#fig:3d}



# Section
Section headings make use of a single hash at the start of the line, followed by a single space. The numbering of headings can be suppressed by adding {-} to the end of the heading text.

## Subsection
Subsections use two hashes.

### Subsubsection
Subsubsections use three hashes.



# Formatting of the reference list
The reference list below has been automatically generated by Pandoc. The section heading will not be numbered by default -- you do not need to do anything to make this happen.


# References
