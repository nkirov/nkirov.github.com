%{
TD_138_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 76
%%  \time 2/4
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
  \acciaccatura g8 a4 b4 \acciaccatura b8 \noteFi d4\glissando b8\prall([ a]) 
  \acciaccatura a8 \afterGrace b2(\( { c16[ b a b]\) } c16[ b a8]) \breathe  \bar ""
  \acciaccatura a8 b8.^\rtoe([ a16]) a8 \prall([ g]) \acciaccatura g8 a2. r4  \bar ""
  \acciaccatura g8 a8( \acciaccatura { b16[ a] } g8) \acciaccatura a8 b4 \bar ""
\varA  
  \afterGrace b4\startTextSpan( { \stdB a8\stopTextSpan) \stdE }  \bar ""
\varB
  a8\startTextSpan\prall([ g16 fis!\stopTextSpan])   
e4.( fis!8) \breathe \bar "" 
\afterGrace g8(\( { a16[ g]\) } fis!16[ e]) e4 e2. r4 \bar ""
\acciaccatura g8 a8( \acciaccatura { b16[ a] } g8) \acciaccatura a8 b4 \bar ""
\afterGrace b4( { \stdB a8) \stdE } 
a8\prall([ g16 fis!]) e4.( fis!8\noBeam) \breathe  \bar ""
\afterGrace g8(\( { a16[ g]\) } fis!16[ e]) e4 e2.  
 \bar "|." 
 s4 \fixB c4 \fixC
 \bar "|."
s16 \clef treble
\varA  
 b'8\startTextSpan\prall([ a\stopTextSpan)]  \bar "||" 
\varB 
a8\startTextSpan\prall([ \afterGrace g])( { \stdB fis!8\stopTextSpan) \stdE } 
 \bar "|."
}
\addlyrics { Доб- ра йе змий- ка лю- би- ла, май- ци "си       " ни я ка- за- ла май- ка хи да я ле- ку- ва }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
   \context { \Staff \remove "Time_signature_engraver" } 
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,1"
  tagline = ##f
}


