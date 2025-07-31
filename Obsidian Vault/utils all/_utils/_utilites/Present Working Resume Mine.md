\documentclass[letterpaper,11pt]{article}

\usepackage[empty]{fullpage}
\usepackage{titlesec}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage[english]{babel}

% Ensure PDF is machine readable
\pdfgentounicode=1

% Remove page numbering
\pagestyle{empty}

% Optimized margins for one page
\addtolength{\oddsidemargin}{-0.6in}
\addtolength{\textwidth}{1.2in}
\addtolength{\topmargin}{-0.6in}
\addtolength{\textheight}{1.2in}

% Compact section formatting
\titleformat{\section}{
  \vspace{4pt}\large\bfseries\raggedright
}{}{0em}{}[\vspace{1pt}\hrule\vspace{2pt}]

% Tight spacing commands
\newcommand{\resumeItem}[1]{\item\small #1}
\newcommand{\resumeItemListStart}{\begin{itemize}[leftmargin=0.15in, rightmargin=0in, nosep, itemsep=0pt, topsep=1pt]}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{2pt}}

% Compact job/project headers
\newcommand{\jobHeader}[3]{\textbf{#1} | #2 | \textit{#3}}
\newcommand{\projectHeader}[3]{\textbf{#1} | \textit{#2} | #3}

% Document starts
\begin{document}

% CONTACT INFORMATION - Compact format
\begin{center}
{\Large\bfseries ABHIJITH M S}\\[8pt]
695005 Peroorkada, Trivandrum, Kerala 12345 | Phone: 9188129607 | Email: abhijith1213a@gmail.com\\
LinkedIn: linkedin.com/in/username | GitHub: github.com/abhijithms1213
\end{center}

% \vspace{1pt}

% PROFESSIONAL SUMMARY - Shortened
\section{PROFESSIONAL SUMMARY}
Computer Science graduate with experience in software development, automation, and mobile applications. Skilled in Python, Java, and modern web technologies with proven ability to deliver scalable solutions.

% EDUCATION
\section{EDUCATION}
\textbf{BTECH in Computer Science and Engineering} | Kerala Technical University, Trivandrum, Trivandrum | September 2020 - May 2024\\
\textbf{Coursework:}  Operating Systems, Data Structures, Software Engineering, AI/ML,


% TECHNICAL SKILLS - Condensed
\section{TECHNICAL SKILLS}
\textbf{Languages:} Dart, C, Java,Python, Bash, JavaScript, HTML/CSS\\
\textbf{Frameworks:} Flutter, Dart, Node.js\\
\textbf{Tools:} Git, Tmux, Neovim, VS Code, Android Studio\\
\textbf{Technologies:} Arch Linux, Firebase,

% PROFESSIONAL EXPERIENCE
\section{PROFESSIONAL EXPERIENCE}

\jobHeader{Software Developer}{MYN-Meet Your Needs, Remote}{Aug 2024 -- Present}
\resumeItemListStart
\resumeItem{Developing and maintaining cross-platform mobile applications using Flutter and Dart.}
\resumeItem{Building REST API integrations for secure data transactions and third-party services.}
\resumeItem{Collaborating with team members using Git, code reviews.}
\resumeItem{Integrated Firebase services for authentication, cloud storage, and real-time data synchronization.}
\resumeItemListEnd


% PROJECTS
\section{PROJECTS}

\projectHeader{Gym Reservation Bot}{Python, Selenium, Google Cloud}{January 2021}
\resumeItemListStart
\resumeItem{Developed automated reservation system using Selenium web scraping, deployed on Google Cloud VM}
\resumeItem{Implemented Cron job scheduling for daily execution with integrated error handling}
\resumeItemListEnd

\projectHeader{Ticket Price Calculator App}{Java, Android Studio}{November 2020}
\resumeItemListStart
\resumeItem{Created Android application for ticket calculations with user input validation and pricing logic}
\resumeItem{Designed intuitive UI using XML layouts and implemented backend mathematical algorithms}
\resumeItemListEnd

\projectHeader{Transaction Management System}{Java, JavaFX}{October 2020}
\resumeItemListStart
\resumeItem{Developed banking GUI with account management using OOP principles and secure authentication}
\resumeItem{Implemented deposit, withdrawal, and balance inquiry functionality with transaction logging}
\resumeItemListEnd

% LEADERSHIP & ACTIVITIES
\section{LEADERSHIP \& ACTIVITIES}

\jobHeader{President}{University Fraternity}{Spring 2020 - Present}
\resumeItemListStart
\resumeItem{Led 30-member organization to achieve highest 4-star ranking from university administration}
\resumeItem{Managed executive board and coordinated community service and academic support programs}
\resumeItemListEnd

\end{document}