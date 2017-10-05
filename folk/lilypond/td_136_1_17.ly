%{
TD_136_1_17
%}

\include "td-preamble.ly"
\include "makam.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%% \tempo 8 = 184
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"52"
  
 f8 g a8. | \acciaccatura a8 bfk a~\noBeam( a[ g16)] | g16([ a)] a([ g)] g16.\prall( f) |
 f8 g a8. | \acciaccatura a8 bfk a~\noBeam( a[ g16)] | g16([ a)] a([ g)] g16.\prall( f) |
 \acciaccatura f8 g g\noBeam g16.([ f)] | f16([ efb)] d8~ d8. | %% d8 d d8. 
 \varA
 \acciaccatura f8\startTextSpan g \acciaccatura g a a16.( g) | 
 \acciaccatura f8 g g\noBeam a16([ g f\stopTextSpan)] |
f16([ efb)] d8~ d8. | d8 d d8. |
 g8 g g16.([ f)] | f16([ efb)] d8~ d8. |
 \varB
 f16\startTextSpan([ g)] g([ a)] a([ g f\stopTextSpan)] |
\varC
 f8\startTextSpan \acciaccatura f g g16.([ f\stopTextSpan)] | 
 f16([ efb)] d8~ d8. | d8 d d8. |
 \bar "|." 
 s8 \fixB g,4 \fixC s16 
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA
  \acciaccatura f'8\startTextSpan g g g16.( f) | f8 g\noBeam g16.\prall([ f\stopTextSpan)]  \bar "||"
\varBC
  \acciaccatura f8\startTextSpan g g a16.([ g\stopTextSpan)]
 \bar "|." 
}
\addlyrics { Тъз ве- чер ни съм ве- се- ла, 
             тъз ве- чер ни съм ве- се- ла, 
		че ми го ня- ма лю- бе- то,
		че ми го ня- ма лю- бе- то,
				ня- ма го~й ня- ма да дой- ди,
				ня- ма го~й ня- ма да дой- ди }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}

\header{
  opus = "ТД-136,1,17"
  tagline = ##f
}

\paper  {
	 myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
  }

