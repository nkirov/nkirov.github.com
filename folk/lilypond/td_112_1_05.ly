%{
td_112_1_05
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 132
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"132-138"
\cadenzaOn
\phrasingSlurDown
c4 d8[( c]) \acciaccatura d8 e1\fermata( f8[ e16\prall d] e[ f e d] 
\varA
s4\startTextSpan c4\stopTextSpan)
\parS
c4 d8-\parenthesize\prall^\markup { \flat }[( c]) 
\acciaccatura c8 d1( 
\varB
\afterGrace e!2.\startTextSpan)\( { d16[ e\stopTextSpan]\) } 
d8\prall[( c]) c16[( b a b] c[ b \times 2/3 { a b g~] } g8\noBeam)
\bar ""
c4 d8\prall[( c]) \acciaccatura c8 d2.( e1\fermata f16[ e d e] f[ e d e] 
f[ e d c]) r4 
\varC
d8\startTextSpan[( e]) d[( c\stopTextSpan]) 
\acciaccatura c8 d2( 
\varD
c8\startTextSpan\prall[ b16 c] \times 2/3 { d8[ c b\stopTextSpan)] }
\bar ""
a8 a\noBeam~ a1\fermata
 \bar "|." 
s4 \fixB cis, \fixC
  \bar "|." 
 s16 \clef treble
\varA
e'16\startTextSpan[ d c8] r4\stopTextSpan \bar "||"
\varB
\afterGrace e2.\startTextSpan\( { f16[ e d e\stopTextSpan]\) } \bar "||"
\varC
c8\startTextSpan d16\noBeam c\stopTextSpan \bar "||" 
\varD
c16\startTextSpan(\prall[ b a b] c8[ b\stopTextSpan])
 \bar "|."   
}
\addlyrics { Ди- мо на Ра- да ду- ма- ше: Ра- ди мо, лю- бе Ра- ди мо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,5"
  tagline = ##f
}


