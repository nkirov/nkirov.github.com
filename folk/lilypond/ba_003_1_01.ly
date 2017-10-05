%{
BA_3_1_01
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
a8 d8. | d16([ c]) c8. | d8 d16([ c8)] | c16([ bfb)] a8. | c8~ c8([ bfb16)] | 
\varAB
a8\startTextSpan~ a8([ g16)]\stopTextSpan | 
a16([ bfb)] c8. | c16([ bfb)] a8. | 
\varC
c8\startTextSpan c8.\stopTextSpan | 
c16([ bfb)] a8. | a8~ a8. | a8 r8. 
 \bar ":|" 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
a8\startTextSpan r8.\stopTextSpan \bar "||" 
\varB
c8\startTextSpan c8.\stopTextSpan \bar "||" 
\varC
g8\startTextSpan c8.\stopTextSpan 
\bar "|." 
}
\addlyrics { Ма- ма Я- на ти- хом про- го- ва-  ря: Ма- ри Я- но, 
ма- ри  су- лу- джа- но, }
\addlyrics { ма- ри Я- но, ма- ри  су-  лу- джа- но, 
се  чиф- чи- и,  се  във пъ- тя  вър- вят }
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
  opus = "ВА-3,1,1"
  tagline = ##f
}


