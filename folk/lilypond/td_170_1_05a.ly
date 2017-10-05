%{
TD_170_1_05_palaus
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 152
  \time 2/4
d4 d8\noBeam ees^"↑" f4 
\par
\acciaccatura\parenthesize g8 f( ees) d( ees) f( g) f16( g f8~ f4~  \time 3/4 f~ f8 ees d[ ees^\ltoe])
\break
\parS
\time 2/4 f4 f8-\parenthesize-\prall( ees) d4.\fermata( ees8^"↑") f( ees) f4 
\acciaccatura f8 ees( d) d4 d2( d\fermata)  \bar "||" 
\break
d4 d8 ees^"↑"\noBeam f4 f8( ees) d( ees) f( g) f16( g f8~ f4~  \time 3/4 f~ f8 ees d[ ees^\ltoe])
\break
\time 2/4 f4 f8( ees) d4.\fermata( ees8^"↑") f( ees) f4 
 ees8( d) d4 d2\fermata 
 \bar "||" 
}
\addlyrics { Ма- ма на Сто- ян ду- ма- ше: Си- но Сто- я- не, Сто- я- не,
про- пъ- ди, си- но, туй бул- че, туй бул- че, туй ха- тър- съз- че }
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

\header{
  opus = "ТД-170,1,5"
  tagline = ##f
}


