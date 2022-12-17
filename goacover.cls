\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{goacover}[2022/12/17 GOA Cover Template]

\LoadClass[10pt,notitlepage]{article}
\usepackage{geometry}
\geometry{twoside,
	paperwidth=210mm,
	paperheight=297mm,
	textheight=682pt,%682 to 745
	textwidth=480pt, % 522
	centering,
	headheight=50pt,
	headsep=12pt,
	footskip=18pt,
	footnotesep=24pt plus 2pt minus 12pt,
	columnsep=18pt
}
\usepackage[affil-it]{authblk}
\renewcommand\Affilfont{\itshape\small}
\usepackage{setspace}
\onehalfspacing
\usepackage[hidelinks]{hyperref}
\pagenumbering{gobble} 


%%%%% Variables %%%%%
% Title
\def\pubtitle#1{\def\@pubtitle{#1}}
\title{\textbf{\@pubtitle}}
\date{}
% Version
\def\pubversion#1{\def\@pubversion{#1}}
\def\pubstate#1{\def\@pubstate{#1}}
\def\pubstatedate#1{\def\@pubstatedate{#1}}
\def\pubsherpa#1{\def\@pubsherpa{#1}}
\def\pubsherpadate#1{\def\@pubsherpadate{#1}}
% Cite as
\def\pubcitation#1{\def\@pubcitation{#1}}

\newcommand{\makeversion}{
	\begin{center}
		{\LARGE \textbf{\@pubversion{} version}\footnote{ Level of access, as per info available on Sherpa Romeo: \url{\@pubsherpa} (\@pubsherpadate)}}\\
		\vspace{0.5cm}
		{\Large  \@pubstate{} on \@pubstatedate}
	\end{center}
}


\newcommand{\makeciteas}{
	\begin{center}
		{\Large \textbf{Cite as}}\\
	\end{center}
	{\large \@pubcitation} 
}

