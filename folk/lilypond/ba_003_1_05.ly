%{
BA_3_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
\varA   
  \repeat volta 2 { d8 e\noBeam e | e e([ d)] |
  d8\startTextSpan d\noBeam d\stopTextSpan 
}
  \alternative  { { d8 d4 } { e8 e8([ d)] } }
d8 c\noBeam c | c c([ b)] | a8 a\noBeam a | a d4 | a8 d\noBeam c |
c8 b([ a)] | d a\noBeam a | a a4 
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble  
\varA
  d8\startTextSpan d\noBeam c\stopTextSpan 
}
\addlyrics { Зе- ми ма, Ра- до, зе- ми ма, лю- бе, лю- бе, 
чи ний сми хо- ра мно- го бо- га- ти, 
чи ний сми хо- ра мно- го бо- га- ти  }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-3,1,5"
  tagline = ##f
}


