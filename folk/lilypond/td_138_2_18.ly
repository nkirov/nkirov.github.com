%{
td_138_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
d4 d c \acciaccatura c8 d4 d( ees16[ d c8]) b4 c2 b4\prall( a^\ltoe)
\bar ""
a4 b8 b4. \acciaccatura c8 d4 c( d16[ c b8]) c c\noBeam( b[ a]) gis4\prall( f8) r
\bar ""
e4 a8 a\noBeam a a4. b8 a16([ b] a8[ gis]) gis!1~ gis4 r a2 b8[( c] d1)
\bar ""
c2.( d16[ c b c] d[ c b8]) r4 b8(\prall s^\rtoe a]) aes[( s^\rtoe gis!]) 
\acciaccatura f8 gis!4(~ gis16[ f e f] gis![ f e8]) e e\noBeam~ e1~ e4 r
\bar ""
a2 b8([ c]) \afterGrace d2.(\( { e16[ d]\) } c2. d16[ c b c] d[ c b8]) r4 b8\prall[( a])
\acciaccatura g8 a\prall[( gis!])
\bar ""
\acciaccatura f8 gis!4( gis16[ f e f] gis![ f e8]) e4 e1 r4 b' b8( c4 b8)
\acciaccatura a8 b4( b16[ a gis! a] b[ a gis!8]) r4
\bar ""
gis!4 f^\ltoe e8 gis!4( f16[ e]) e4 e1~ e2
 \bar "|." 
s4 \fixB bes
\bar "|." 
}
\addlyrics { Бре то- я Ха- джи Ди- ми- тър от Сли- вен гра- да го- ля- ма!
Всич- ки са чу- дом чу- де- ха що си и- мо- та про- да- де
и го на па- ри на- пра- ви, че ста- на град- ски па- за- ван- тин }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,18"
  tagline = ##f
}


