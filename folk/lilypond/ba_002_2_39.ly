%{
BA_2_2_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8^"I изпяване"( c) c4 | c8([ b] g[ b]) | a4 b8\prall( a) | a2 | c4 c8\prall( b) | 
d8( c) c4 | c8([ b] g[ b]) | a4 a8\prall( g) | g2 | g4 g 
 \bar "|." 
d'8^"II изпяване"( c) c4 | c8([ b] aes[ b]) | aes4 aes8( g) | g2 | c4 c8( b) | 
d8( c) c4 | c8([ b] aes[ b]) | aes4 aes8( g) | g2 | g4 g 
 \bar "|."  
}
\addlyrics { И- ван на Я- на ду- ма- ши: Я- но мо, Ан- ги- ли- но мо }
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
  opus = "ВА-2,2,39"
  tagline = ##f
}


