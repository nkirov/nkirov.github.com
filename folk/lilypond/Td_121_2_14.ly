%{
TD_121_2_14
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
% \tempo 8 = 120
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #10
  \rhythmMarkA \rhyMarkAAAdot #"52"
%  
\varA
d8\startTextSpan\noBeam e( e\noBeam) f16\stopTextSpan | 
\varB
\parS
gis8\startTextSpan f16[( e)] e8-\parenthesize\prall([ d16\stopTextSpan)] |
\varC
f8\startTextSpan\noBeam f~( f\fermata[ \times 1/3 { g!16 f e\stopTextSpan]) } |
%
d8\noBeam e( e\noBeam) f16 | gis8 f16([ gis)] f16.([ e)] |
\varDEF
e4\startTextSpan g!16([ f e\stopTextSpan)] | 
d8\noBeam e( e\noBeam) f16 | \acciaccatura f8 gis8 f16([ e)] e8. | e4 e8.
 \bar "|." 
 s8 s16 \fixB d4 \fixC 
 \bar "|." 
%\set Score.measureLength = #(ly:make-moment 1 16)  
% s16 \bar ""  
% \set Score.measureLength = #(ly:make-moment 7 16)  
% \clef treble
 \break
\varA
d8\startTextSpan\noBeam e( e\noBeam) d16\stopTextSpan \bar "||" 
\varB
f8\startTextSpan f8 e8-\parenthesize\prall([ d16\stopTextSpan)] \bar "||"
\varC
 \acciaccatura d8\startTextSpan f8\noBeam f~( f\fermata[ \times 1/3 { g!16 f e\stopTextSpan]) } \bar "||"
\varD
e4\startTextSpan \times 3/4 { f16([ g! f e\stopTextSpan)] } \bar "||"
\varE
e8\startTextSpan r g!16([ f e\stopTextSpan)]  \bar "||"
\varF
e8\startTextSpan r f8\prall([ e16\stopTextSpan)]
 \bar "|." 
}
\addlyrics { Про- чу са се- ло Бо- ба- да, Бо- ба- да, Бо- ба- да- ли- я,
Бо- ба- да, се- ло кяр- ли- я }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 8)
		}
	}
}
%
\header{
  opus = "ТД-121,2,14"
  tagline = ##f
}


