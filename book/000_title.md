--- 
header-includes:
- |
  ```{=latex}
  \usepackage{awesomebox}
  \definecolor{rubio-amarillo-ardiente}{HTML}{FFD015}
  \definecolor{rubio-negro}{HTML}{000000}
  \definecolor{rubio-azul-apacible}{HTML}{6B99A6}
  \definecolor{rubio-verde-vibrante}{HTML}{82E6B8}
  \definecolor{rubio-purpura-profundo}{HTML}{5C2959}
  \definecolor{primaryowlorange}{rgb}{0.96,0.5,0.12}
  \definecolor{primaryowlblue}{rgb}{0.16,0.35,0.68}
  \definecolor{primaryowlyellow}{rgb}{0.99,0.87,0.02}
  \definecolor{primaryowlblack}{rgb}{0.14,0.12,0.13}
  \definecolor{secundaryowlblue}{rgb}{0.29,0.77,0.9}
  \definecolor{secundaryowlgreen}{rgb}{0.63,0.83,0.29}
  \definecolor{secundaryowlgray}{rgb}{0.57,0.56,0.56}
  \definecolor{secundaryowlmagenta}{rgb}{0.57,0.06,0.33}
  \definecolor{yellowcover}{rgb}{1.00,0.80,0.09}
  \definecolor{browncover}{rgb}{0.25,0.22,0.14}
  \usepackage{tcolorbox}
  \usepackage{tabularx}
  \usepackage{float}
  \newtcolorbox{info-box}{colback=secundaryowlblue!5!white,arc=0pt,outer arc=0pt,colframe=secundaryowlblue!60!black}
  \newtcolorbox{warning-box}{colback=orange!5!white,arc=0pt,outer arc=0pt,colframe=orange!80!black}
  \newtcolorbox{error-box}{colback=red!5!white,arc=0pt,outer arc=0pt,colframe=red!75!black}

  \newcommand{\bookTitle}{Data Science Workflow Management}
  \newcommand{\bookPDFTitle}{Data Science Workflow Management}
  \newcommand{\bookAuthor}{Ibon Mart\'inez-Arranz}
  \newcommand{\bookSubject}{Data Science}
  \newcommand{\bookProducer}{Ibon Mart\'inez-Arranz}
  \newcommand{\bookCreator}{Ibon Mart\'inez-Arranz}
  \newcommand{\bookKeywords}{Data Science,Machine Learning,Python,matplotlib,pandas,numpy,scipy,jupyter}

  \hypersetup{
      breaklinks=true,
      bookmarks=true,
      pdftitle={\bookPDFTitle},
      pdfauthor={\bookAuthor},
      pdfsubject={\bookSubject},
      pdfproducer={\bookProducer},
      pdfcreator={\bookCreator},
      pdfkeywords={\bookKeywords},
      pdftoolbar=true, % show or hide Acrobat’s toolbar
      pdfmenubar=true, % show or hide Acrobat’s menu
      pdffitwindow=true, % resize document window to fit document size
      pdfstartview={FitH}, % fit the width of the page to the window (,{FitV})
      bookmarksopen=true,
      pdfborder={0 0 0}
  }
  \hyphenation{
      learning
      providing
      Transfor-ma-tion
  }

  ```
pandoc-latex-environment:
  noteblock: [note]
  tipblock: [tip]
  warningblock: [warning]
  cautionblock: [caution]
  importantblock: [important]
  tcolorbox: [box]
  info-box: [info]
  warning-box: [warning]
  error-box: [error]
---

# Data Science Workflow Management
<!--
![](./figures/cover_dswm.png) 
-->
