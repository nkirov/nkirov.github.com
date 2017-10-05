%{
BA_3_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
d8\noBeam e8. | e8 e16.([ d16.]) | d8 c16.([ b16.]) | a8\noBeam d8. | d16([ c]) c16([ g8]) | c8\noBeam c8. | c16([ b]) a8. | a16([ b]) d8. | d16([ c]) c16([ g8]) | c8\noBeam c8. | c16([ b]) a8. | a8\noBeam a8. 
 \bar "|." 
}
\addlyrics { "В мо-" ре са ла- мя раз- иг- ра, на ден по мо- ма и- зи- да, 
на ден по мо- ма и- зи- да }
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
  opus = "ВА-3,1,33"
  tagline = ##f
}


