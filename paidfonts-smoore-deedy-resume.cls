% Intro Options
\ProvidesClass{paidfonts-smoore-deedy-resume}[2014/11/16 resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass[letterpaper]{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage{hyperref}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage[absolute]{textpos}
\usepackage{datetime}
\usepackage{titlesec}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Avenir Next}

% Date command
\newdateformat{customdate}{\THEDAY{ }\shortmonthname{ }\THEYEAR{ }}

\setlength{\TPHorizModule}{\paperwidth}
\setlength{\TPVertModule}{\paperheight}
% \textblockorigin{0mm}{5mm}

\newcommand{\lastupdated}{
\begin{textblock}{0.2}[1,1](0.97,0.97) % The position of the bottom right corner of the Last Updated text on the page
% (97% of the page across, 97% down, in a box sized as 20% of the width of the page)
\color{date}\fontspec{Avenir Next Ultra Light}\fontsize{8pt}{10pt}\selectfont
Last Updated on \customdate\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\fontsize{40pt}{60pt}
		\fontspec{Avenir Next Ultra Light}\selectfont #1 
		\fontspec{Avenir Next Regular}\selectfont #2
	} \\
	\vspace{4pt}
	\centering{ \color{headings}\fontspec{Avenir Next Regular}\fontsize{10pt}{13pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
	\vspace{-12pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Footer command
\newcommand{\footrule}{
\vspace{5pt}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
}

% Spacing commands
\newcommand{\tinyindent}{\hspace{0.75em}}

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
%\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

% Section seperators command
\newcommand{\sectionspace}[0]{\vspace{6pt}}
\newcommand{\subsectionspace}[0]{\vspace{5pt}}
\newcommand{\subsubsectionspace}[0]{\vspace{3pt}}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec{Archer Book}\fontsize{16pt}{24pt}\selectfont\raggedright\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Archer Bold}\fontsize{11pt}{11pt}\selectfont\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec{Archer Bold}\fontsize{11pt}{11pt}\selectfont\uppercase{#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Avenir Next Regular}\fontsize{10pt}{12pt}\selectfont{#1\\}\normalfont}

\newcommand{\rundescript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Avenir Next Regular}\fontsize{10pt}{12pt}\selectfont{#1}\normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec{Avenir Next Regular}\fontsize{9pt}{11pt}\selectfont{#1\\}\normalfont}

\newcommand{\runlocation}[1]{\color{headings}\raggedright\fontspec{Avenir Next Regular}\fontsize{9pt}{11pt}\selectfont{#1}\normalfont}

\newcommand{\locnoalign}[1]{
\color{headings}\fontspec{Avenir Next Regular}\fontsize{9pt}{11pt}\selectfont{#1\\}\normalfont}

\newcommand{\runlocnoalign}[1]{
\color{headings}\fontspec{Avenir Next Regular}\fontsize{9pt}{11pt}\selectfont{#1}\normalfont}
