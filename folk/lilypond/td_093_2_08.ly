%{
sva_093_2_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 8 = 110
\time 2/4
f4 g8\noBeam f | aes4 aes8( g) | g([ f g f]) | aes8.( g16) aes4 | g g8\noBeam f |
f4 e | e4(~ e8[ f16 e]) | e8 e4.\fermata |
\break
d4 e8\noBeam f | g4 f | \acciaccatura f8 g8.([ f16] e16[ f8.]) | aes4 aes |
f8 g4 f8 | f4 e | e4(~ e8[ f]) | e4 e\fermata
 \bar "|." 
 s4 \fixB f
  \bar "|." 
}
\addlyrics  { Ви- ла са~й ло- за ви- не- на,  ви- ла са~й ло- за ви- не- на
о- ко- ло гра- да Сли- ве- на, о- ко- ло гра- да Сли- ве- на }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,2,8"
  tagline = ##f
}


