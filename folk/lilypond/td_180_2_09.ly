%{
TD_180_2_9
%}

\include "td-preamble.ly"

\score {
\relative c'' {
  \time 2/4
 g8( a) a a | g\prall( f) f4 |  g8( a~ a4) |  g8\prall( f) f4 \bar ":|:" 
\repeat volta 2 {
 a8[( g)] g  f16[( e)] | f4 f16( e d e)  d2 \breathe }
\alternative {  { f8^\ltoe( g^\rtoe) g4 } { d4 d } } 
\bar "|."
}
\addlyrics { Хай- де, ма Ра- до, да и- дем, "в се-" ло За- го- ре на сват- ба, сват- ба! }
}

\score {
\relative c' {
\time 2/4
\bar "|:" 
d4.( e8 ) | f8 e e d | e d4 d8 | \acciaccatura f8 g4 g |
d4.( e8 ) | f8 e e d | e d4 d8 | d4 d \bar ":|"
}
\addlyrics { Не мо- га, ми- ло лю- бе, да дой- да, гла- ва ме бо- ли, ня- ма да дой- да, }
\addlyrics { не мо- га, ми- ло лю- бе, да дой- да, ку- пи ми кър- па, то- газ ще дой- да }
%%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
  \context { \Staff \remove "Time_signature_engraver" }
}
%%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
\header{
%%  title = "Хайде ма Радо, да идем"
  composer = "TD-180,2,9"
   tagline = ##f
}

\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%



