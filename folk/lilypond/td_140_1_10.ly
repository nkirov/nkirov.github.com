%{
td_140_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\cadenzaOn
\phrasingSlurDown
d1(~ d4~ d16[ c b c] d[ c b a]~ a4) b8([ c]) d4 c8.\noBeam c16 d4 d8([ c b]) 
c8 c\noBeam c4. \afterGrace b4\(( { c16[ b]\) } a) \breathe
\bar ""
a4 b a^\ltoe a a2 b8 a4. gis2. r4 e2 b'4
\bar ""
a8([ b]~ \afterGrace b2.\( { a16[ gis!]\) } a1 \bar "" b4~ b16[ a gis! a] b[ a gis! f!]~ f4) \bar ""
gis!8([ a]) gis!4\prall( f!8) e4 e1~ e2. r4
\bar ""
a4 b a8([ b]~ b16[ a gis! a] \grace { b16\([ a] } gis!4\) f!) \bar "" gis!8([ a)] \bar "" gis!4( f!8) 
e8^\rtoe \bar "" e\noBeam^\rtoe e4. r8
\bar ""
a8^\rtoe b\noBeam^\rtoe a[( b]~ b16[ a gis! a] \grace { b16\([ a] } gis!4\) f!) gis!8([ a)]
gis!4( \times 2/3 { a16[ gis f!]) } e4. e4^\ltoe e1~ e2
 \bar "|." 
s4 \fixB aes,
 \bar "|."  
}
\addlyrics { Хей, слън- це- то о- гря- ло ни о- гря- ло, сий- ме- не "в За-" ра
вли- за- ха, мла- ди граж- да- не фа- тат: от Сли- вен ха- джи Ди- ми- тра,
Ди- ми- тра~й ха- джи Сте- фа- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,10"
  tagline = ##f
}


