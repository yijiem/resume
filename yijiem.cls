\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yijiem}[2024/09/08 My custom CV class]

\LoadClass{article}
\setlength{\parindent}{0pt}
\pagenumbering{gobble}

\RequirePackage{titlesec}

\usepackage[a4paper, portrait, margin=0.5in]{geometry}
\usepackage{setspace}
\singlespacing

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
}

\newcommand{\contact}[4]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered} #4%
        }%
    }%
}

\setlength{\leftmargini}{0pt} % Remove indentation for the first-level itemize list

\newcommand{\projectitemsthree}[6]{%
    \begin{description}
    \item \textbf{#1} #2
    \item \textbf{#3} #4
    \item \textbf{#5} #6
    \end{description}
}

\newcommand{\workitemsthree}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}

\newcommand{\workitemsfour}[4]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \item #4
    \end{itemize}
}
