%{
td_180_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown 
\slurDown
g8^\ltoe g\rtoe\noBeam g4( a1\fermata \grace { g32\([ a g fis] } g4\)) g8\noBeam 
a16[( bes] \grace { c16[\( bes a] } bes1\fermata\) c4 
\grace { bes!16\([ c bes a] } bes4\) 
%%\accell
c16[ bes! a bes] c[ bes a bes]  
\bar ""
\stemDown
c[ bes a bes] c[ bes a g]) 
\stemNeutral
r4 a2(~ a8[ g)] fis!8.([ e16]) e8([ s^\rtoe fis!] 
\grace { e32[\( fis e d^"↑"] } e1\fermata\)) r4 a8\noBeam a16([ g])
\bar ""
g16[( a] \grace { g32\([ a g fis! ] } g8\)~ \afterGrace g1\( { fis!16[ g]\) }
a4 \grace { g32[\( a g fis] } g4\) a16[ g fis! g] a[ g fis g] a[ g fis g] 
\times 2/3 { a[ g fis] } ees!8) r8
\bar ""
ees!8\noBeam ees( fis!1 \times 4/5 { ees!16[ fis! ees d ees] } fis[ ees d ees] 
fis[ ees d ees])
d8^\ltoe d\noBeam^\ltoe d1\fermata r4 c4. d16[( ees!]) 
\bar ""
ees!8[( fis!] \grace { ees!32\([ fis! ees d] } 
\afterGrace ees1\)\(\fermata { d16^"↓"[ ees!\)] } fis!16[ ees! d ees] fis[ ees d ees]
fis[ ees d c]) r4^\ltoe g'8^\ltoe g^\ltoe\noBeam( a1 \times 4/5 { g16[ a g fis! g] }
\bar ""
a4 \times 4/5 { g16[ a g fis! g] } a16[ g fis g] a[ g fis g] a[ g fis g] \bar ""
\times 2/3 { a[ g fis!] } ees!8\noBeam) r8 \bar ""
fis!8[( \times 4/5 { ees!32 fis ees d ees] } fis32[ ees d ees d8])
d8 d\noBeam~ d1\fermata
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Пи- ян бях, бул- ка Пет- ран- ке, пи- ян бях, та се из- лъ- гах
те- жък си за- лог за- ло- жих }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,10"
  tagline = ##f
}


