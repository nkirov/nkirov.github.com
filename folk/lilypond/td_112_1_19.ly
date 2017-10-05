%{
td_112_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 184
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\acciaccatura c8 d2 c8 bes\noBeam c 
c\noBeam( \afterGrace d2\fermata\( { c16[ bes!]\) } c16[ bes!^"↑"]) r8 c8\noBeam
\acciaccatura c \noteFi d\noBeam(\glissando \noteFi c16[\glissando \noteFi bes!]\glissando 
\varA
s8\startTextSpan a8\stopTextSpan\noBeam)
a1\fermata r4
\bar ""
c8( \afterGrace d4.)\( { \stdB c8\) \stdE } \bar ""
c \bar "" bes!\noBeam \bar "" bes!16[( c]) \bar "" c8.([ bes16] a8\noBeam)
\varB
a8\startTextSpan bes!8.[( a16\stopTextSpan]) 
a8.[( g16] f8) r
\bar ""
\parG
f16 f\noBeam f4. \parenthesize r8 g16[( a]) 
\varC
bes!4\startTextSpan( a8\stopTextSpan) 
\parenthesize r8 bes!8\noBeam 
\acciaccatura bes!8 c8.([ bes!16]) a8.[( g16] f8) r
\bar ""
g16 a\noBeam~ a8 g8\noBeam f g16[( a]) 
\afterGrace g2\fermata(\( { f16[ e]\) } f16[ e])
d8 d4 d2\fermata
 \bar "|." 
s4 \fixB ees \fixC
 \bar "|." 
\varA
a16\startTextSpan[ bes!\stopTextSpan] \bar "||"
\varB
a16\startTextSpan bes!16\noBeam( a4\stopTextSpan]) \bar "||"
\varC
\acciaccatura a8\startTextSpan bes!4( a8\stopTextSpan) 
 \bar "|."  
}
\addlyrics { Бел- чин Ка- лин- ке ду- ма- ше: Ка- лин- ке, се- стро по- мал- ка,
я зе- ми кит- ка клю- чо- ве, че от- клю- чи пъ- стри сан- дъ- ци }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,19"
  tagline = ##f
}


