%{
BA_2_1_25
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
c16([ b] a!16[ b8]) | b16([ a!]) g8. | g16([ a!]) a16([ g8]) | g8~( g16[ f8]) |
g16([afb]) b16([ afb!8]) | \acciaccatura b8 c8( d16[ c b]) | 
b16([ afk]) afk16([ g f]) | g16([ afb]) afb16([ g8]) | g8~( g16[ f8]) | 
g16([ afk]) afk16([ g8]) | g8( afk16[ g f]) | f16([ e]) d8. | 
e16([ f]) g8. | g8~( g8[ f16]) | e16([ f]) g16([ afk8]) | 
g8( afk16[ g f]) | f16([ e]) d8. | e16([ f]) g8. | g8~\noBeam g8. | 
g8\noBeam g8.
 \bar "|." 
}
\addlyrics { По- ка- чи- ла "съ~й" Дра- ган- ка, по- ка- чи- ла "съ~й" 
Дра- ган- ка на ер- шел- вер- шел ви- со- ко от со- гяр во- да да зи- ма }
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
  opus = "ВА-2,1,25"
  tagline = ##f
}


