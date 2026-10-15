\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yijiem}[2024/09/08 My custom CV class]

\LoadClass[10pt]{article}
\setlength{\parindent}{0pt}
\pagenumbering{gobble}

\RequirePackage{titlesec}

\usepackage[a4paper, portrait, hmargin=0.38in, vmargin=0.35in]{geometry}
\usepackage{microtype}
\usepackage{setspace}
\singlespacing

\titleformat{\section}         % Customise the \section command 
  {\large\scshape\raggedright} % Make the \section headers large,
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\normalsize\scshape\raggedright}
  {}{0em}
  {}

\titlespacing*{\section}{0pt}{6pt}{3pt}
\titlespacing*{\subsection}{0pt}{4pt}{1pt}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
  \centerline{\LARGE{#1}}
}

\newcommand{\contact}[4]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered} #4%
        }%
    }%
}

\setlength{\leftmargini}{0pt} % Remove indentation for the first-level itemize list

\newcommand{\projectitem}[2]{%
    \item \textbf{#1} #2
}

\newcommand{\projectitemsthree}[6]{%
    \begin{description}
    \item \textbf{#1} #2
    \item \textbf{#3} #4
    \item \textbf{#5} #6
    \end{description}
}

\newcommand{\workitemstwo}[2]{%
    \begin{itemize}
    \setlength{\topsep}{1pt}
    \setlength{\partopsep}{0pt}
    \setlength{\itemsep}{0.5pt}
    \setlength{\parskip}{0pt}
    \item #1
    \item #2
    \end{itemize}
}

\newcommand{\workitemsthree}[3]{%
    \begin{itemize}
    \setlength{\topsep}{1pt}
    \setlength{\partopsep}{0pt}
    \setlength{\itemsep}{0.5pt}
    \setlength{\parskip}{0pt}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}

\newcommand{\workitemsfour}[4]{%
    \begin{itemize}
    \setlength{\topsep}{1pt}
    \setlength{\partopsep}{0pt}
    \setlength{\itemsep}{0.5pt}
    \setlength{\parskip}{0pt}
    \item #1
    \item #2
    \item #3
    \item #4
    \end{itemize}
}

\newcommand{\workitemsfive}[5]{%
    \begin{itemize}
    \setlength{\topsep}{1pt}
    \setlength{\partopsep}{0pt}
    \setlength{\itemsep}{0.5pt}
    \setlength{\parskip}{0pt}
    \item #1
    \item #2
    \item #3
    \item #4
    \item #5
    \end{itemize}
}
