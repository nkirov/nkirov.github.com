%{
td_180_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\varA
\acciaccatura d8\startTextSpan e1( g8\stopTextSpan) 
f\noBeam \acciaccatura f g16[( f e f]) e[( f e d] c4)
\varB
s4\startTextSpan d4\stopTextSpan^\ltoe
e^\rtoe d8^\ltoe[( e^\rtoe] d[ c]) c1.\fermata r4 b8[( s^\ltoe c]) 
\varC
d1\startTextSpan(~ d8[ c\stopTextSpan])
\bar ""
c4
\varD
s4\startTextSpan f\stopTextSpan
\varE 
 e8.\startTextSpan[( c16\stopTextSpan]) 
 d1\fermata
 \bar "|." 
s4 \fixB f \fixC
 \bar "|." 
s16 \clef treble
\varA
c8\startTextSpan\noBeam \acciaccatura d8 e8~ e1( g8\stopTextSpan) \bar "||"
\varB
c,8\startTextSpan[( d\stopTextSpan]) \bar "||" 
\varC
d1\startTextSpan(~ d16[ e d c\stopTextSpan]) \bar "||" 
\varD
\acciaccatura e8\startTextSpan f4\stopTextSpan \bar "||" 
\varE 
 e16\startTextSpan[( f e d] c4\stopTextSpan)
 \bar "|."  
}
\addlyrics { Ред се ре- дат, ред се ре- дат дор де- вет е- тър- ви  }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,1"
  tagline = ##f
}


