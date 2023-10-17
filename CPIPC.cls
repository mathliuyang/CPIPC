\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CPIPC}[2023/09/18 TuringsCat] 
\PassOptionsToPackage{colorlinks=true,linkcolor=blue,citecolor=blue,urlcolor=blue}{hyperref}
\LoadClass[12pt]{ctexart}
\usepackage{ctex}
\usepackage[top=30.0mm,bottom=25.0mm,left=22.5mm,right=22.5mm,headsep=8mm]{geometry}%设置页边距
\usepackage{array} %主要是增加列样式选项
\usepackage[dvipsnames]{xcolor}%颜色宏包
\usepackage{graphicx}%图片宏包
\usepackage{amsmath}%公式宏包
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{float} %限制浮动体的位置
\usepackage{pdfpages}
\usepackage{listings}
\usepackage{titletoc}
\usepackage{longtable}
\usepackage{tabularx}
\usepackage{caption}
\usepackage{booktabs}%三线表1
\usepackage{multirow}%三线表2
\usepackage{tabularx} % 用于自动调整的表格列宽
\usepackage{siunitx}  % 用于数字和单位格式
\usepackage{enumerate}
\usepackage{colortbl}
\usepackage{geometry}
\usepackage{float}
\usepackage{newclude}
\usepackage[ruled]{algorithm2e}%算法排版样式1
\usepackage{setspace}%调整行距的需要导入这个包
\usepackage{subfigure}%图片并排
\usepackage{shadowtext}%大赛标题加阴影
\usepackage{array}
\usepackage{xcolor}

% Define the colors
\definecolor{color1}{RGB}{13,91,38}
\definecolor{color2}{RGB}{201,71,51}
\definecolor{color3}{RGB}{253,223,139}
\usepackage[colorlinks=true,linkcolor=blue,citecolor=blue,urlcolor=blue]{hyperref}

% \usepackage{tikz}
% \usetikzlibrary{shapes.geometric, arrows, positioning}

% \usepackage{titlesec}
\newcommand{\subsubsubsection}[1]{\paragraph{#1}\mbox{}\\}

\renewcommand{\baselinestretch}{1.0} %设置单倍行距
\numberwithin{equation}{section}
% \usepackage{newtxtext, newtxmath}  %使用Times Nxew Roman 字体的方法

%----- code highlighting -----%
\RequirePackage{listings}

% matlab highlight color settings
%\definecolor{mBasic}{RGB}{248,248,242}
\definecolor{mKeyword}{RGB}{0,0,255}
\definecolor{mString}{RGB}{160,32,240}
\definecolor{mComment}{RGB}{34,139,34}
\definecolor{mNumber}{RGB}{96,96,96}
\definecolor{mBackground}{RGB}{255,255,255}
\definecolor{mRule}{RGB}{96,96,96}

% python highlight color settings
%\definecolor{pBasic}{RGB}{248,248,242}
\definecolor{pKeyword}{RGB}{228,0,128}
\definecolor{pString}{RGB}{148,0,209}
\definecolor{pComment}{RGB}{117,113,94}
\definecolor{pIdentifier}{RGB}{166,226,46}
\definecolor{pNumber}{RGB}{96,96,96}
\definecolor{pBackground}{RGB}{255,255,255}
\definecolor{pRule}{RGB}{96,96,96}

%----- matlab highlight style -----%
\lstdefinestyle{matlab}
{
  language=matlab,
  xleftmargin=23pt,
  xrightmargin=5pt,
  frame=tlbr,framesep=4pt,framerule=0.5pt,
  framexleftmargin=17pt,
  %frame=shadowbox,rulesepcolor=\color{red!20!green!20!blue!20},
  basicstyle=\footnotesize\ttfamily,
  %basicstyle=\footnotesize\fontspec{Consolas},
  keywordstyle={\color{mKeyword}},
  stringstyle={\color{mString}},
  commentstyle={\color{mComment}},
  backgroundcolor=\color{mBackground},
  rulecolor=\color{mRule},
  keywords={
    break,case,catch,classdef,continue,else,
    elseif,end,for,function,global,if,otherwise,parfor,
    persistent,return,spmd,switch,try,while
  },
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=4,
  captionpos=t,
  breaklines=true,
  numberstyle=\scriptsize\color{mNumber},
  %numbersep=9pt,
  numbers=left,
  stepnumber=1,
}

%----- python highlight style -----%
\lstdefinestyle{python}{
  language=python,
  xleftmargin=23pt,
  xrightmargin=5pt,
  frame=tlbr,framesep=4pt,framerule=0.5pt,
  framexleftmargin=18pt,
  %frame=shadowbox,rulesepcolor=\color{red!20!green!20!blue!20},
  basicstyle=\footnotesize\ttfamily,
  %basicstyle=\footnotesize\fontspec{Consolas},
  keywordstyle=\color{pKeyword},
  stringstyle=\color{pString},
  commentstyle=\color{pComment},
  backgroundcolor=\color{pBackground},
  rulecolor=\color{pRule},
  emph={format_string,eff_ana_bf,permute,eff_ana_btr},
  emphstyle=\color{pIdentifier}
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=4,
  captionpos=t,
  breaklines=true,
  numberstyle=\scriptsize\color{pNumber},
  %numbersep=9pt,
  numbers=left,
  stepnumber=1,
}

\pagestyle{plain}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref} %目录和交叉引用超链接
\hypersetup{
colorlinks=true,
linkcolor=black
}%black表示“不显示”红框

\setCJKmainfont[AutoFakeBold=2.17]{FandolSong-Regular.otf}

\setCJKfamilyfont{zhli}{LiSu.ttf}
%\NewDocumentCommand \lishu{}{\CJKfamily{zhli}}

\setCJKfamilyfont{xw}{STXinwei.ttf}[AutoFakeBold=2.17]
\NewDocumentCommand \xinwei{}{\CJKfamily{xw}}

\ctexset{
    appendix        = {
        name        = {附录}
    },
    section         = {
        format      = {\bfseries\zihao{4}\heiti\centering},
        number      = {\bfseries\arabic{section}.},
        aftername   = {\hspace{0.5em}}
    },
    subsection      = {
        format      = {\bfseries\zihao{-4}},
        number      = {\bfseries\arabic{section}.\bfseries\arabic{subsection}},
        aftername   = {\hspace{0.5em}}
    },
    subsubsection   = {
        format      = {\bfseries\zihao{-4}},
        number      = {\bfseries\arabic{section}.\bfseries\arabic{subsection}.\bfseries\arabic{subsubsection}},
        aftername   = {\hspace{0.5em}}
    },
}
\titlecontents{section}[0pt]{\vspace{2mm}\bfseries\heiti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 小节的目录格式
\titlecontents{subsection}[30pt]{}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{subsubsection}[55pt]{}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

\pagestyle{plain}

    


  