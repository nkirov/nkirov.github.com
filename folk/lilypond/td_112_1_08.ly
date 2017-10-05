%{
td_112_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 224
\override Glissando #'style = #'zigzag
\cadenzaOn
\phrasingSlurDown
\varA
s8\startTextSpan a8\stopTextSpan 
c\noBeam \acciaccatura c8 \afterGrace d4\(( { c16[ b]\) } c1\fermata) r4
\varB
s8\startTextSpan a8\stopTextSpan 
c\noBeam \acciaccatura c8 \afterGrace d1\( \glissando { \stdB e8\) \stdE }
\varC
c8\startTextSpan \afterGrace d4.\(( { c16[ d c b\stopTextSpan]\) } 
c8[ b16 g]) r4
\bar "" c8 
\varD
s8\startTextSpan d\stopTextSpan\noBeam 
\acciaccatura c8 \afterGrace d1\fermata\(( { c16[ b a b]\) } 
\varE
c8\startTextSpan[ b16 g\stopTextSpan]) r4
\varF
a8\startTextSpan c\noBeam \acciaccatura c8 \afterGrace d4\(( { c16[ b]\) } 
c16[ d c b]) a8 a\noBeam~ \afterGrace a1\fermata\( { b16[ a g]\) } r4\stopTextSpan
\bar ""
d'16[( e]) d\prall[( c]) \acciaccatura c8 \afterGrace d1\fermata\(( { c16[ b a b]\) }\varE 
c8\startTextSpan[ b16 g\stopTextSpan]) r4
\varG
a16\startTextSpan[( b]) c32\noBeam c[( b]) a16([ b]) a8\noBeam~ a1\stopTextSpan\fermata
 \bar "|." 
s4 \fixB fis \fixC
 \bar "|." 
 s16 \clef treble
\varA
g16\startTextSpan[( a\stopTextSpan]) \bar "||"
\varB
a16\startTextSpan[( b\stopTextSpan]) \bar "||"
\varC
c8\startTextSpan \afterGrace d4\( { c16[ b\stopTextSpan]\) } \bar "||"
\varD
d16\startTextSpan[( c\stopTextSpan\noBeam]) \bar "||"
\varE
\times 2/3 { c8\startTextSpan[ b g\stopTextSpan] } \bar "||"
\varF
a32\startTextSpan[( b]) c16\noBeam c16[( b]) a8 
a\noBeam~ \afterGrace a1\fermata\( { b16[ a g]\) } r4\stopTextSpan \bar "||"
\varG
a32\startTextSpan[( b]) c16\noBeam c[( b]) a8 a8\noBeam~ a1\stopTextSpan\fermata
\bar "|."  
}
\addlyrics { Про- вик- на- ла са Гроз- дан- ка от Мар- ко- ви- те са- ра- и:
Кой, бо- же, кой ка- ту ме- ня }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 224 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,8"
  tagline = ##f
}


