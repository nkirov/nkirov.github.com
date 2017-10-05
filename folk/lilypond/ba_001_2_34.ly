%{
BA_1_2_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g8 a4. | c4 d8( e) | \slurDown \afterGrace e2( { d16[ e ] ) } \slurNeutral| 
  d4 c8( b) | a4 r4 | c4\noBeam d | d c8( b) | a2 | a8 a4. | a4 r4 | 
  g4\noBeam a | 
\varA
  c4\startTextSpan c\stopTextSpan |
  d4.( c8) | d4 c8( b) | a2 | c4\noBeam d | d c8( b) | a2 | a8 a4. | a4 r4  
 \bar "|." 
 \endm
 \varA
  c4\startTextSpan d\stopTextSpan  
\bar "|." 
}
\addlyrics { Про- чу съ Ляс- ко Жи- ляз- ко, чи и- мал мно- го и- ма- ни, 
чи и- мал мно- го и- ма- ни, от сър- це рож- ба ня- ма- ли }
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
  opus = "ВА-1,2,34"
  tagline = ##f
}


