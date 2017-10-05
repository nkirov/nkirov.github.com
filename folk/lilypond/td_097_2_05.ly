%{
td_097_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\override Glissando #'style = #'zigzag
\varA
\times 2/3 { g8\startTextSpan g4\stopTextSpan } 
\hideNotes \noteFi g64\glissando \unHideNotes 
c2( \grace { d16[\( c] } b8\)[ \grace { c16[\( b] } a8]\)~ a2)
b8 c\noBeam b[(\prall a]) \acciaccatura { b16[ c b a gis] } a1~ a4 r
\bar ""
\hideNotes \noteFi g64\glissando \unHideNotes c2 \times 2/3 { b16[( d c } b a]) \bar ""
\varB
a16\startTextSpan[( b \grace { a[\( gis!] } a8\stopTextSpan]\))~ \bar ""
a1 r4
\repeat volta 2 {
\varC  
\acciaccatura f8\startTextSpan g2\stopTextSpan(~ 
g8[ aes^"↑"]) \acciaccatura b8 c4^\rtoe \bar ""
\acciaccatura c8 d2(~ d8[ c16\prall b32 c] \bar ""
d16[ c b8]) a8^\rtoe b\noBeam^\rtoe 
\varD
s16\startTextSpan a8\stopTextSpan\mordent 
g\noBeam~ 
\afterGrace g2\( { \stdB a8\) \stdE } \breathe  \bar "" }
\alternative { { b8\prall[( a]) a[(\prall g]) g16[( a b8]~ b2.) r4 r } 
{ b8[(\prall a]) g16[( a] \times 2/3 { b[ a g]) } g1 } }
 \bar "|." 
s4 \fixB d \fixC
  \bar "|." 
s16 \clef treble
\varA
g4\startTextSpan g\stopTextSpan \bar "||"
\varB
a16\startTextSpan[( b \grace { a[\( b a gis!] } a8\stopTextSpan]\)) \bar "||"
\varC  
s16\startTextSpan g4\stopTextSpan \bar "||" 
\varD
s16\startTextSpan a4\stopTextSpan
 \bar "|."   
}
\addlyrics { Ка- ва- " " ли сви- рят, ма- мо, " " в'у- со- и, Гроз- дан- ка 
ме- те, ма- мо, дво- ро- ве дво- ро- ве }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,5"
  tagline = ##f
}


