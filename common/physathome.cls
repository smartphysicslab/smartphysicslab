%%% v. 1.1 - updated final note for instructors
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{physathome}[2020/07/02]

\LoadClass{article}

\bibliographystyle{plain}



\setlength\topmargin{-48pt}
\setlength\headheight{0pt}
\setlength\headsep{25pt}
\setlength\marginparwidth{-20pt}
\setlength\textwidth{7.0in}
\setlength\textheight{9.5in}
\setlength\oddsidemargin{-30pt}
\setlength\evensidemargin{-30pt}

\frenchspacing
\usepackage[english]{babel}			% english
\usepackage{graphicx}				% images
\usepackage{amssymb,amsmath}		% math
\usepackage{color}		            % color
\usepackage{multicol}				% three-column layout
\usepackage{url}					% clickable links
\usepackage{marvosym}				% symbols
\usepackage{wrapfig}				% wrapping text around figures
\usepackage[T1]{fontenc}			% font encoding
\usepackage{charter} 				% Charter font for main content
\usepackage{blindtext}				% dummy text
\usepackage{datetime}				% custom date
	\newdateformat{mydate}{\monthname[\THEMONTH] \THEYEAR}
\usepackage[pdfpagemode=FullScreen,
			colorlinks=false]{hyperref}	% links and pdf behaviour
\usepackage{paralist}                % compact lists
\usepackage{needspace}
\usepackage{fancyhdr}
\pagestyle{fancy}
\lfoot{	\footnotesize
		All smartphysicslab material is distributed under the CC-BY  license.   Template copyright \textcopyright{} 2020 by P. Cicuta \& G. Organtini \\
		\Mundus\ \href{http://www.smartphysicslab.org}{http://www.smartphysicslab.org}	\quad
		\Letter\ \href{mailto:smartphysicslab@gmail.com}{smartphysicslab@gmail.com  }
	  }
\cfoot{}
\rfoot{\footnotesize ~\\ Page \thepage}
\rhead{The Smart Physics Lab}
\renewcommand{\headrulewidth}{0.0pt}	% no bar on top of page
\renewcommand{\footrulewidth}{0.4pt}	% bar on bottom of page

\newcommand{\beq}{\begin{equation*}}
\newcommand{\eeq}{\end{equation*}}

% Define separators
\newcommand{\HorRule}[1]{\noindent\rule{\linewidth}{#1}} % Creating a horizontal rule
\renewcommand{\hrulefill}{%
  \leavevmode\leaders\hrule height 1pt\hfill}

\newcommand\experimentId{unassigned}
% Define Title en News input
\newcommand{\experiment}[1]{%
		\begin{center}	
			\Huge \usefont{T1}{augie}{m}{n}
			#1\\%
			\normalsize (exp. id \experimentId)
		\end{center}	
		\par \normalsize \normalfont}

\newcommand{\Title}[1]{%
            \needspace{5\baselineskip}
            \vspace{0.5cm}
	        \usefont{T1}{augie}{m}{n} \noindent \large #1  \hrulefill
	        \vspace{0.5cm}
	        \par \normalfont\noindent\ignorespaces}

\newcommand{\Author}[1]{%
  \begin{centering}
	{An experiment proposed by:\\ #1}\\
  \end{centering}
  \noindent\HorRule{3pt} \\[-0.75\baselineskip]
  \HorRule{1pt}}

\newcommand{\forTeachers}{%
\newpage
\experiment{For the instructor}
  \noindent\HorRule{3pt} \\[-0.75\baselineskip]
  \HorRule{1pt}
}

\newcommand{\closing}{%
\Title{Further Info Online}
Please leave feedback, suggestions, comments, and report on your use of this resource, on the channel that corresponds to this experiment on the Slack workspace ``smartphysicslab.slack.com''.\\
  Instructors should register on the platform using the form on \url{smartphysicslab.org}
to obtain login invitation to the Slack workspace, and/or to request being added to the mailing list of smartphysicslab.
}

\newenvironment{intro}
{\begin{center}
 \begin{minipage}[h]{0.75\linewidth}
 \Title{Overview}
}{\end{minipage}
 \end{center}}
