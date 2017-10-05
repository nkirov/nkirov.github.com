%{
BA_2_2_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
b8\noBeam c8\noBeam d8 | b8 a4 | b8\noBeam b8\noBeam c | b8 a8([ g]) | a8 b4 | b8( a4) | b8 a8([ g]) | a8 b4 | b4. | b8 b4 
 \bar ":|" 
}
\addlyrics { Сно- щи из- ля- зав, сно- щи из- ля- зав ни "в ид-" но вре- ми, ни "в ид-" но вре- ми }
\addlyrics { дър- ва да си- ка, дър- ва да си- ка, о- гън да кла- да, о- гън да кла- да  }
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
  opus = "ВА-2,2,36"
  tagline = ##f
}


