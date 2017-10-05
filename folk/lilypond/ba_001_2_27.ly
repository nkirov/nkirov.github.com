%{
BA_1_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
a8\noBeam b8. | c8\noBeam b8. | a8\noBeam( a8.) | 
\varA
d8\startTextSpan\noBeam d8([ b16\stopTextSpan)] | 
c8( b16 [ a8 ] ) | a8\noBeam b8. | c8\noBeam b8. | a8\noBeam~ a8. | a8\noBeam a8. | a8 r8.  
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
 \varA
c16\startTextSpan[( d]) d8.\stopTextSpan\noBeam 
\bar "|." 
}
\addlyrics { Тез Ба- ка- лов' ти дъ- ще- ри, тез Ба- ка- лов' ти дъ- ще- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-1,2,27"
  tagline = ##f
}


