%{
td_139_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 76
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\noteFi c8.[(\glissando b16]) \acciaccatura b8 c4^\ltoe
\acciaccatura c8 d2.( ees16[ d c8]) d4
\acciaccatura d8 ees!4 d8[\prall( c]) b\prall^\markup { \flat }[( a]) 
\acciaccatura b8 c2.~ c8 r c( d4 c8) b\prall[( a^\ltoe])
\bar ""
\acciaccatura b8 c4( d32[ c b c] d16[ c b8]) \noteFi c16[(\glissando d^\rtoe]) 
d[( c] b[ c b a]) a[( g]) g8~ g2 g1( \times 2/3 { a16[ g f]) } r8
\bar ""
c'8( d4 c8) \acciaccatura c8 b8.[( a16]) 
\acciaccatura b8 \afterGrace c2.(\( { b16[ c]\) } d16[ c b8]) c16[( d])
d[( c] b8.[ a16]) a[( g]) g8~ g2 g1
 \bar "|." 
s4 \fixB c, 
 \bar "|." 
}
\addlyrics { Чи- чо ле, чи- чо Ка- ра- джо, "в се-" ло же- ле- пе дой- да- ха,
же- ле- пе и кър- дже- ле пе }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,11"
  tagline = ##f
}


