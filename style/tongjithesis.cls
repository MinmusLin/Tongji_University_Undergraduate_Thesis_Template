\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tongjithesis}[tongjithesis]


% \LoadClass[UTF8,a4paper,fontset=fandol]{ctexart}
\LoadClass[UTF8,a4paper,fontset=fandol]{ctexart}


% 使用句点（．）替换句号（。）
% \catcode`\。=\active
% \newcommand{。}{\ifmmode\text{．}\else ．\fi}


% 设置页边距
\setlength{\headheight}{43pt}
\RequirePackage[a4paper,top=4.2cm,bottom=2.7cm,left=3.3cm,right=1.8cm]{geometry}


% 定义 \cleardoublepage 命令
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{
    \clearpage
    {\pagestyle{empty}\origdoublepage}
}
\let\cleardoublepage\clearemptydoublepage


% 设置边界线
\RequirePackage{fancybox}
\makeatletter
\@ifclasswith{tongjithesis}{twoside}{
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-4.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-4.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-5.5cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-6.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-6.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-7.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-7.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-8.5cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-9.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-9.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.93cm\else 16.57cm\fi,-10.3cm){装}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-10.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-11.5cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-12.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-12.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-13.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.93cm\else 16.57cm\fi,-13.9cm){订}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-14.5cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-15.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-15.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-16.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-16.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.93cm\else 16.57cm\fi,-17.5cm){线}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-18.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-18.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-19.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-19.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-20.5cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-21.1cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-21.7cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-22.3cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-22.9cm){$|$}
    \fancyput*(\ifodd\value{page} -0.8cm\else 16.7cm\fi,-23.5cm){$|$}
}{
    \fancyput*(-0.8cm,-4.3cm){$|$}
    \fancyput*(-0.8cm,-4.9cm){$|$}
    \fancyput*(-0.8cm,-5.5cm){$|$}
    \fancyput*(-0.8cm,-6.1cm){$|$}
    \fancyput*(-0.8cm,-6.7cm){$|$}
    \fancyput*(-0.8cm,-7.3cm){$|$}
    \fancyput*(-0.8cm,-7.9cm){$|$}
    \fancyput*(-0.8cm,-8.5cm){$|$}
    \fancyput*(-0.8cm,-9.1cm){$|$}
    \fancyput*(-0.8cm,-9.7cm){$|$}
    \fancyput*(-0.93cm,-10.3cm){装}
    \fancyput*(-0.8cm,-10.9cm){$|$}
    \fancyput*(-0.8cm,-11.5cm){$|$}
    \fancyput*(-0.8cm,-12.1cm){$|$}
    \fancyput*(-0.8cm,-12.7cm){$|$}
    \fancyput*(-0.8cm,-13.3cm){$|$}
    \fancyput*(-0.93cm,-13.9cm){订}
    \fancyput*(-0.8cm,-14.5cm){$|$}
    \fancyput*(-0.8cm,-15.1cm){$|$}
    \fancyput*(-0.8cm,-15.7cm){$|$}
    \fancyput*(-0.8cm,-16.3cm){$|$}
    \fancyput*(-0.8cm,-16.9cm){$|$}
    \fancyput*(-0.93cm,-17.5cm){线}
    \fancyput*(-0.8cm,-18.1cm){$|$}
    \fancyput*(-0.8cm,-18.7cm){$|$}
    \fancyput*(-0.8cm,-19.3cm){$|$}
    \fancyput*(-0.8cm,-19.9cm){$|$}
    \fancyput*(-0.8cm,-20.5cm){$|$}
    \fancyput*(-0.8cm,-21.1cm){$|$}
    \fancyput*(-0.8cm,-21.7cm){$|$}
    \fancyput*(-0.8cm,-22.3cm){$|$}
    \fancyput*(-0.8cm,-22.9cm){$|$}
    \fancyput*(-0.8cm,-23.5cm){$|$}
}
\makeatother


% 设置有序列表与无序列表
\RequirePackage{enumerate}
\RequirePackage[inline]{enumitem}
\RequirePackage{circledsteps}
\setlistdepth{2}
\setlist[enumerate]{nosep,labelsep=0pt}
\setlist[enumerate,1]{label=（\arabic*）,left=2em,nosep,labelsep=0pt,wide=\parindent}
\setlist[enumerate,2]{label=\Circled{\arabic*},nosep,labelsep=0pt,labelwidth=1em,listparindent=0pt}
\setlist[itemize]{nosep}
\setlist[itemize,1]{wide=\parindent}
\setlist[itemize,2]{wide=2\parindent}


% 设置目录页
\RequirePackage[titles,subfigure]{tocloft}
\makeatletter
\renewcommand{\numberline}[1]{
    \settowidth\@tempdimb{#1\hspace{0.5em}}
    \hb@xt@\@tempdimb{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}
\makeatother
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1}
\setlength{\cftsecindent}{0em}
\setlength{\cftsubsecindent}{1em}
\setlength{\cftsubsubsecindent}{4em}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftbeforesubsubsecskip}{0pt}
\renewcommand{\contentsname}{\zihao{4}\heiti\textmd{目~~录}}
\renewcommand{\cftsecfont}{\songti\zihao{5}}
\renewcommand{\cftsubsecfont}{\songti\zihao{5}}
\renewcommand{\cftsubsubsecfont}{\songti\zihao{5}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecdotsep}{\cftdotsep}
\renewcommand{\cftsecpagefont}{\zihao{5}}
\renewcommand{\cftsubsecpagefont}{\zihao{5}}
\renewcommand{\cftsubsubsecpagefont}{\zihao{5}}


% 设置图表编号和章节相关联
\RequirePackage{chngcntr}
\counterwithin{figure}{section}
\counterwithin{table}{section}


% 设置浮动体
\RequirePackage{float}
\floatstyle{plaintop}
\restylefloat{table}
\RequirePackage{algorithm}
\floatstyle{plain}
\restylefloat{listing}
\sloppy


% 设置字体
% - 五号：10.5pt
% - 小四：12.0pt
% - 四号：14.0pt
\RequirePackage{setspace}
\setstretch{1.5}
\RequirePackage[T1]{fontenc}
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}
\RequirePackage{etoolbox}
\AtBeginEnvironment{table}{\zihao{-5}}
\AtBeginEnvironment{tabular}{\zihao{-5}}
\AtBeginEnvironment{tabularx}{\zihao{-5}}


% 设置摘要页与目录页
\RequirePackage{fancyhdr}
\fancypagestyle{firststyle}{
    \fancyhf{}
    \pagenumbering{Roman}
    \fancyhead[LO,RE]{~ \includegraphics[height=1.14cm]{figures/tongji.pdf}~}
    \fancyhead[RO,LE]{\large ~毕业设计（论文）~\\}
    \fancyfoot[C]{\large \thepage}
    \renewcommand{\headrulewidth}{1.8pt}
    \renewcommand{\footrulewidth}{0pt}
}


% 设置正文页
\RequirePackage{lastpage}
\fancypagestyle{mainstyle}{
    \fancyhf{}
    \pagenumbering{arabic}
    \fancyhead[LO,RE]{~ \includegraphics[height=1.14cm]{figures/tongji.pdf}~}
    \fancyhead[RO,LE]{\large ~毕业设计（论文）~\\}
    \fancyfoot[RO]{{\large 共\quad \pageref{LastPage}\quad 页\quad 第\quad \thepage \quad 页}}
    \fancyfoot[LE]{{\large 第\quad \thepage \quad 页\quad 共\quad \pageref{LastPage}\quad 页}}
    \renewcommand{\headrulewidth}{1.8pt}
    \renewcommand{\footrulewidth}{1.8pt}
}


% 设置章节标题
\ctexset{
    section={                             % 一级标题
      format={\centering\heiti\zihao{4}}, % - 格式：四号黑体居中
      aftername={\quad},                  % - 序号与题名间空 4 格
      beforeskip={.5\baselineskip},       % - 段前 0.5 行
      afterskip={.5\baselineskip},        % - 段后 0.5 行
     },
    subsection={                          % 二级标题
            format={\heiti\zihao{5}},     % - 格式：五号黑体
            aftername={\space},           % - 序号与题名间空 1 格
            beforeskip={.5\baselineskip}, % - 段前 0.5 行
            afterskip={.5\baselineskip},  % - 段后 0.5 行
        },
    subsubsection={                       % 三级标题
            format={\heiti\zihao{5}},     % - 格式：五号黑体
            aftername={\space},           % - 序号与题名间空 1 格
            beforeskip={.5\baselineskip}, % - 段前 0.5 行
            afterskip={.5\baselineskip},  % - 段后 0.5 行
            indent={2em},                 % - 缩进 2 个汉字符
        },
    paragraph={                           % 四级标题
            format={\heiti\zihao{5}},     % - 格式：五号黑体
            numbering=true,               % - 启用编号
            number={\Alph{paragraph}},    % - 编号格式：使用大写字母作为四级标题
            aftername={.\space},          % - 序号后带点和一个空格
            beforeskip={0pt},             % - 段前 0 行
            afterskip={0pt},              % - 段后 0 行
            indent={2em},                 % - 缩进 2 个汉字符
            aftertitle={\par},            % - 标题后添加一个空行
        },
    subparagraph={                        % 五级标题
            format={\heiti\zihao{5}},     % - 格式：五号黑体
            numbering=true,               % - 启用编号
            number={\alph{subparagraph}}, % - 编号格式：使用小写字母作为五级标题
            aftername={.\space},          % - 序号后带点和一个空格
            beforeskip={0pt},             % - 段前 0 行
            afterskip={0pt},              % - 段后 0 行
            indent={2em},                 % - 缩进 2 个汉字符
            aftertitle={\par},            % - 标题后添加一个空行
        }
}
\setcounter{secnumdepth}{5}


% 设置参考文献页
\RequirePackage[
    backend=biber,
    style=gb7714-2015,
    natbib=true,
]{biblatex}
\addbibresource{bib/note.bib}
\makeatletter
\AtBeginDocument{\let\c@listing\c@figure}
\makeatother


% 设置封面信息盒子
\RequirePackage{array}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}}
\let\oldtabular\tabular
\let\endoldtabular\endtabular
\newenvironment{information}[1][h!]{
    \renewcommand{\arraystretch}{1.5}
    \setlength{\tabcolsep}{8pt}
    \zihao{-3}\oldtabular[#1]
}{\renewcommand{\arraystretch}{1.2}\endoldtabular
}
\RequirePackage{ulem,calc}
\newlength{\covertextwidth}
\newlength{\covermaxwidth}
\newcommand{\ulinecentered}[1]{
    \setlength{\covertextwidth}{\widthof{#1}}
    \setlength{\covermaxwidth}{20em}
    \ifthenelse{\lengthtest{\covertextwidth > \covermaxwidth}}{
        \pgfmathsetmacro{\scalefactor}{\covermaxwidth/\covertextwidth}
        \uline{\makebox[\covermaxwidth][c]{\scalebox{\scalefactor}[1]{#1}}}
    }{
        \uline{\makebox[\covermaxwidth][c]{#1}}
    }
}


% 定义内容布局
\AtEndOfPackage{
    \InputIfFileExists{style/tongjithesis.cfg}{}{}
}


% 设置论文基本信息
\newcommand{\school}[1]{\def\tongjischool{#1}}
\newcommand{\major}[1]{\def\tongjimajor{#1}}
\newcommand{\student}[2]{\def\tongjiauthornumber{#1}\def\tongjiauthor{#2}}
\newcommand{\thesistitle}[2]{\def\tongjithesistitle{#1}\def\tongjithesissubtitle{#2}}
\newcommand{\thesistitleeng}[2]{\def\tongjithesistitleeng{#1}\def\tongjithesissubtitleeng{#2}}
\newcommand{\thesisadvisor}[1]{\def\tongjithesisadvisor{#1}}
\newcommand{\thesisdate}[3]{\def\tongjithesisyear{#1}\def\tongjithesismonth{#2}\def\tongjithesisday{#3}}


% 设置封面页
\newcommand{\MakeCover}[0]{
    \begin{titlepage}
        \begin{center}
            \thisfancyput(-0.75cm,-13cm){}
            \vspace*{\fill}

            \includegraphics[height=2.25cm]{figures/tongji.pdf}

            \zihao{-2}\MakeUppercase{\textbf{\tongjiuniversityeng}}
            \vskip 30pt
            \zihao{-0}\heiti{毕业设计（论文）}
            \vskip 60pt
            \begin{information}{M{5em}M{22em}}
                \zihao{-2}\heiti{课题名称} & \ulinecentered{\tongjithesistitle} \\
                \zihao{-2}\heiti{副\enskip{}标\enskip{}题} & \ulinecentered{\tongjithesissubtitle} \\
                \zihao{-2}\heiti{学\quad{}\quad{}院} & \ulinecentered{\tongjischool} \\
                \zihao{-2}\heiti{专\quad{}\quad{}业} & \ulinecentered{\tongjimajor} \\
                \zihao{-2}\heiti{学生姓名} & \ulinecentered{\tongjiauthor} \\
                \zihao{-2}\heiti{学\quad{}\quad{}号} & \ulinecentered{\tongjiauthornumber} \\
                \zihao{-2}\heiti{指导教师} & \ulinecentered{\tongjithesisadvisor} \\
                \zihao{-2}\heiti{日\quad{}\quad{}期} & \ulinecentered{\tongjithesisyear{}年\tongjithesismonth{}月\tongjithesisday{}日} \\
            \end{information}
            \vspace*{\fill}
        \end{center}
    \end{titlepage}
}


% 设置中文摘要页
\newcommand{\MakeAbstract}[2]{
    \begin{center}\bf\heiti\xiaoer
        \ \\
        \tongjithesistitle
    \end{center}
    \vspace{1pt}
    \begin{center}\heiti\zihao{4}
        摘要
    \end{center}
    \vspace{-0.5em}
    \begin{spacing}{1.5}
        \heiti\songti{#1}
        \par
    \end{spacing}
    \vskip 5mm
    \noindent{\songti\zihao{5}{%
        \textbf{关键词：}#2
    }}~\\
}


% 设置英文摘要页
\newcommand{\MakeAbstractEng}[2]{
    \clearpage
    \begin{center}\heiti\xiaoer
        \ \\
        \textbf{\tongjithesistitleeng}
    \end{center}
    \vspace{1pt}
    \begin{center}\heiti\zihao{4}
        \textbf{ABSTRACT}
    \end{center}
    \vspace{-0.5em}
    \begin{spacing}{1.5}
        #1
        \par
    \end{spacing}
    \vskip 13.65pt
    \noindent{\heiti\zihao{5}
        \textbf{Key words: }#2
    }
    \par
}