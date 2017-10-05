%{
td_181_1_23
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 168
\cadenzaOn
f4( g8) g([ a]) a\noBeam a a2.(~ a16[ g]~ g8\noBeam)
\varA
g\startTextSpan\noBeam^\ltoe g^\rtoe( a\noBeam \grace { bes16[\( a] } g4\)) g8.([ a16\stopTextSpan] 
\grace { g32[\( a g f] } g1\fermata\))  r4
\bar "" %%2
c,8 g'\noBeam g g\noBeam g( \afterGrace a\( { g32[ a g f]\) } 
\varB
\afterGrace g4\startTextSpan\( { a16[ g f]\) } \times 2/3 { g16[ a g] } f[ e]) f[( e\stopTextSpan]) 
f[( e]) f8\noBeam( \grace { e32[\( f e d] } e2\fermata\)~ e16[ d] c2\fermata) r4 
\bar ""
c8. g'8\noBeam g g16\noBeam g 
\bar ""
g16.^\rtoe([ a32] g[a g f] g16.[ a32] g[ f e16^\rtoe]) \acciaccatura f8 g f16([ e])
\bar ""
\varC
f8.\startTextSpan([ g16] f32[ g f g] \grace { f32[\( g f e] } f8^\rtoe\) \times 2/3 { g32[ f e } f16] 
\times 2/3 { g16[ f e] } \times 2/3 { d[ e c] } c2.\stopTextSpan\fermata) r4
\bar ""
d8([ e16]) f8\noBeam e g\noBeam \afterGrace f[\(( { \stdB g\) \stdE } f16 e])
\bar ""
d8^\rtoe\noBeam d d1.\fermata( e32[ d c16]~ c8\noBeam) r4
\bar ""
c8 g'\noBeam g g\noBeam g( \afterGrace a\( { g32[ a g f]\) } 
\afterGrace g4\( { a16[ g f]\) } f16[ g]  f[ e])
\bar ""
f16[( s^\ltoe g]) f([ e]) 
\bar ""
\varD
f4.\startTextSpan( g16[ f] \times 2/3 { g[ f e] } f8\stopTextSpan\noBeam 
\times 2/3 { g16[ f e] } d[ c]~ c2\fermata) r4
\bar ""
d8([ e16]) f8\noBeam e g16[( f]) 
\bar ""
\varE
f32\startTextSpan[( g f e] \afterGrace f8[\( { \stdB g8\) \stdE } f16 e\stopTextSpan]) 
\bar ""
d8^\ltoe d\noBeam d1\fermata 
 \bar "|." 
 s4 \fixB b \fixC
  \bar "|." 
s16 \clef treble
\varA
g'8\startTextSpan\noBeam g( a16.[ g32]) g8([ a] \hideNotes d,16\stopTextSpan) \unHideNotes \bar "||"
\varB
\hideNotes d16\startTextSpan( \unHideNotes g8\noBeam a16[ g] f[ e]) g8\stopTextSpan \bar "||"
\varC
f4.\startTextSpan( f16[ e] f8.[ g16] f[ e] d[ c]~ c2.\stopTextSpan\fermata) \bar "||"
\varD
f16.\startTextSpan([ e32] f4. g16[ f e] f8\noBeam \hideNotes d16\stopTextSpan) \unHideNotes \bar "||"
\varE
f16\startTextSpan[( g f e^"↓"\stopTextSpan]) 
 \bar "|."   
}
\addlyrics { Па- ша на Сто- ян ду- ма- ше: Сто- я- не, бя- ло бъл- гар- че,
хай да си, Сто- я- не, по- тур- чиш, млад я- ни- ча- рин да ста- ниш,
ша ти за- ло- жа, за- ло- жа баш Ца- ри- гра- да с'ха- ре- ми " "
про- ду- ма }
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
  opus = "ТД-181,1,23"
  tagline = ##f
}


