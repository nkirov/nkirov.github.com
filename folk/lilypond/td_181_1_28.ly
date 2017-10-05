%{
TD_181_1_28
%}

\include "td-preamble.ly"

\score {
\relative c' {
  \tempo 4 = 132
  \time 2/4
\varA  
 d8\startTextSpan e8\noBeam d( c\stopTextSpan) 
b( c) d4 | d8( e4.) d8( e) d( c) 
d( e) d\noBeam c \break
\varB
 d\startTextSpan( e) e( d\stopTextSpan) d2 d4 d  
\bar "|." 
s4 \fixB cis4  \fixC 
\bar "|."
\endm
\varA
 d8\startTextSpan e8\noBeam b4\stopTextSpan  \bar "||" 
\varB
 d8\startTextSpan( e) e32[( d e16\stopTextSpan)]  
 \bar "|."
 }
\addlyrics { Сля- зло е мом- че гор- нен- че
             от- го- ре, от пла- ни- на- та }
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
%%   title = "Слязло е момче горненче"
  composer = "ТД-181,1,28"
  tagline = ##f
	}


