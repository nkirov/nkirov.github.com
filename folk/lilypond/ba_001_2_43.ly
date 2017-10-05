%{
BA_1_2_43
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
\repeat volta 2 {  
  g8\noBeam a b8. | b4^">" b8([ a16]) | d8.([ c16]) b8([ a16]) }
  \alternative  { { a8~\noBeam a8~ a8([ g16]) } { a8 r8 r8. } }  
\bar "||" 
b8 b16([ a]) g8. | 
\varA
fis4\startTextSpan a8( [ g16\stopTextSpan]) | 
fis8.( [ e16]) e8. |
a8.([ b16] a16[ g fis]) | e16( [ fis]) a8\noBeam g8. | fis8.([ e16]) g8. | 
\varB
fis4\startTextSpan e8.\stopTextSpan | 
e8 r8 r8.
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA 
fis8.\startTextSpan([ e16)] a8([ g16\stopTextSpan)] \bar "||"
\varB
fis8.\startTextSpan([ e16)] e8.\stopTextSpan 
\bar "|."
}
\addlyrics { Ди- ми- тър Дон- ки ду- ма- ше, ше: 
Дон- ки ле, ду- дум бай- но- ва, Дон- ки ле ду- дум бай- но- ва }
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
  opus = "ВА-1,2,43"
  tagline = ##f
}


