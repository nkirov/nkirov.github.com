%{
sva_139_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
%%\time 2/4
\cadenzaOn
\parS
\acciaccatura c8 d4 c2.-\parenthesize^"↑" \acciaccatura c8 d4( e16[ d c8]) 
\varA
c\startTextSpan[( b\stopTextSpan]) 
\varB
c4\startTextSpan\mordent( \times 2/3 { d16[ c b^\markup{ "↓" } } a8]) a4 a2^\markup { \flat }\prall \stopTextSpan
\acciaccatura b!8 c4( d16[ c b8]) r4 
\bar "" \break
\acciaccatura b8 c4 a2 a \acciaccatura b8 c4
a2 g4 a2. a1~ a4
 \bar "|." 
 s4 \fixB gis \fixC
  \bar "|." 
 s16 \clef treble
\varA
s8\startTextSpan d'4\stopTextSpan \bar "||" 
\varB
c4\startTextSpan\mordent(~ c16[ b a8]) a4 a4.( g8)\stopTextSpan
  \bar "|."  
}
\addlyrics { Де са йе чу- ло- ви- дя- ло сряд ля- то бял сняг да ле- ти }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,4"
  tagline = ##f
}


