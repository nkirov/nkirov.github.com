%{
TD_136_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
\varA
 g4 \startTextSpan a8( g) \stopTextSpan 
g( f e4) 
\varB 
 \acciaccatura g8 \startTextSpan a4 g8( f) \stopTextSpan e8 e4 e8 \acciaccatura f8 g4 
a8( g) g( g e d) 
\varC
 f4 \startTextSpan g16( f e8) \stopTextSpan e8 d4. d2  
 \bar "|." 
\endm
\varA
  a'8( \startTextSpan g) g( a) \stopTextSpan \bar "||" 
\varB
 \acciaccatura e8 \startTextSpan g4 g8\prall( f)  \stopTextSpan 
\varC 
e8(  \startTextSpan f) g( f)  \stopTextSpan \bar "||"  
e8( \startTextSpan f) f\prall( e)  \stopTextSpan 
 \bar "|."   
 \break
 a8( g) g( a) g16( f e4.) \acciaccatura f8 g4 a8( g) g( f e4) e e 
 \acciaccatura f8 g4 a8( g) g([ f] e[ d)] \acciaccatura e8 f4 f e8 d4. d2
  \bar "|."  
s4 \fixB g,4  \fixC 
\bar "|." 
}
\addlyrics { Я из- ляз, май- ко, на- вън- ка, я из- ляз, май- ко, на- вън- ка
" " " " " " " " " " " " " " " " 
За Нед- ка, за бя- ла Нед- ка, ко- га са "с Нед-" ка лю- бях- ме }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%  ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-136,1,13"
  tagline = ##f
}


