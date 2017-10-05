%{
TD_093_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
a8( g) g\noBeam a | f4 f16( e d e) | c4 c'8( bes) | a8( g4 f8) | a8( g) g\noBeam a |
f4 f16( e d e) | c4 d | d2\breathe | c4 f8( e) | c4 f8( e) | c4 g' | g r |
g8( f) g\noBeam a | f4 f16( e d e) | c4 d | d2
 \bar "|." 
}
\addlyrics { Миш- ки- те дуп- ки дул- ба- ят, о- ра- та бар'- бой ко- па- ят.
Куй- рук, куй- рук, пе- чен лук, пе- че- но слад- ко, рай- кин боб }
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
  opus = "ТД-93,2,26"
  tagline = ##f
}


