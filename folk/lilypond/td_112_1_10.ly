%{
td_112_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 184
\cadenzaOn
\phrasingSlurDown
a8 \acciaccatura a8 b2. b16[( c]) 
\varA
\afterGrace d4\startTextSpan(\( { c16[ b]\) } c16.[ b32\stopTextSpan])
\varB
b1\startTextSpan\fermata( a8\stopTextSpan) 
r8 
\varC
s8\startTextSpan d\stopTextSpan\noBeam 
\varA
\afterGrace d\startTextSpan(\( { c16[ b]\) } c16.[ b32\stopTextSpan]) 
\afterGrace b2(\( { a16[ gis]\) } 
\afterGrace a1\fermata)\( { gis16^\mordent^\markup { \sharp }[ e]\) } r4
\bar ""
\varD
s8\startTextSpan a8\stopTextSpan 
\acciaccatura a8 b2 b16[( c]) \afterGrace d4(\( { c16[ b]\) } c8[ b])
\afterGrace b2\fermata(\( { a16[ g]\) } a8\noBeam g16[ e]) \breathe
\varE
fis!8\startTextSpan\noBeam fis!\stopTextSpan
\varF
fis!1\startTextSpan\fermata( e8\stopTextSpan) 
r \bar ""
\varD
s8\startTextSpan a8\stopTextSpan 
\acciaccatura a8 b2 b16\noBeam cis \afterGrace cis!4.(\( { d16[ cis]\) } b16[ cis])
\afterGrace b4(\( { a16[ gis!]\) } a8\noBeam gis!16[ e]) fis!16\noBeam 
fis! fis!1\fermata
\bar "|." 
s4 \fixB fis! \fixC
\bar "|." 
%% s16 \clef treble
\varA
d'4\startTextSpan( c8[ b\stopTextSpan]) \bar "||"
\varB
b1\startTextSpan\fermata( \times 2/3 { c16[ b a\stopTextSpan)] } \bar "||"
\varC
b16\startTextSpan[( c\stopTextSpan]) \bar "||"
\varD
\acciaccatura g8\startTextSpan a8\stopTextSpan \bar "||"
\varE
fis!16\startTextSpan\noBeam fis!\stopTextSpan \bar "||"
\varF
fis!1\startTextSpan\fermata( \times 2/3 { g16[ fis! e\stopTextSpan]) } 
\bar "|." 
}
\addlyrics { Ре- шил е Цо- ньо да бя- га от Ми- кро, от би- ва- ка си,
точ- но ми "в два-" най- си ча- са }
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
  opus = "ТД-112,1,10"
  tagline = ##f
}


