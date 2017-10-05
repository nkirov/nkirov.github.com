%{
td_139_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
\cadenzaOn
\phrasingSlurDown
c2 d \acciaccatura ees8 d2( ees!16[ d32 ees] f[ ees d ees] f[ ees d16]) r8
c4 d^\rtoe \acciaccatura ees!8 d4( f32[ ees! d ees] f[ ees d ees])
\bar ""
\parS
d16-\parenthesize\prall^\markup { \flat }[( c8.]) \bar ""
\acciaccatura { d16[ c b] } c1 r4  \bar "" \acciaccatura d8 ees!4
f32[( ees! d ees] \grace { f16[\( ees d] } c4\)) 
\afterGrace d1\( { ees!16[ d c]\) } \breathe \bar ""
d16[( ees!8]) 
d16-\parenthesize\prall^\markup { \flat }(~ d[ s^\rtoe \afterGrace c\( { d16[ c b c]\) } \grace { d16\([ c] } b8]\))
\bar ""
a8 a\noBeam~ a2. \bar "" g8 r \bar ""
\acciaccatura d'8 ees!^\rtoe f32[( ees! d ees] \grace { f16[\( ees d] } c4\))
\afterGrace d1\( { ees!16[ d c]\) } \breathe 
\bar ""
d16[( ees!8]) d16(~ \afterGrace d8\([ { c16[ c]\) } \grace { c16\([ d c] } b8^"↓"]\))
a8 a\noBeam~ a2 a2.
\bar ""
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Сля- за- ха, ма- мо, дой- до- ха тро- ви- ца вак- ли ов- ча- ре 
от- го- ря от пла- ни- на- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 66 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,29"
  tagline = ##f
}


