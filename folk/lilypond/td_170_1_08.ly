%{
TD_170_1_08
%}

\include "td-preamble.ly"

%#(define (set-time-signature one two)
%          (markup #:override '(baseline-skip . 0) #:number
%          (#:line ((#:column (one num)) #:vcenter "+" (#:column (two num))
%        ))))

tsMarkup =\markup {
\override #'(baseline-skip . 2) \number {
\column { "13" "16" }
\vcenter "+"
\column { "9" "16" }
      }
 }

%\override Staff.TimeSignature #'stencil = #ly:text-interface::print
%\override Staff.TimeSignature #'text = #tsMarkup

\score {
\relative c' {
\override Staff.TimeSignature #'stencil = #ly:text-interface::print
\override Staff.TimeSignature #'text = #tsMarkup 
 \tempo 8 = 152
%%\cadenzaOn  %%  \time 13/16 + \time 9/16
 \time 22/16
\set Score.measureLength = #(ly:make-moment 13 16)
\acciaccatura f8 g g\noBeam g16([ a)] \afterGrace f8.( {g16[ f ees)] } d4 |
\set Score.measureLength = #(ly:make-moment 9 16)
c8 d16.([ e16.)] f4 |
\set Score.measureLength = #(ly:make-moment 13 16)
\acciaccatura f8 g g\noBeam g16([ a)] \afterGrace f8.( {g16[ f ees)] } d4 | 
\set Score.measureLength = #(ly:make-moment 9 16)
c8 d8.\noBeam d8 r8   
\bar ":|:"
\set Score.measureLength = #(ly:make-moment 13 16)
f8 g\noBeam a16([ g)] g32([ a g16 f)] f8.([ g16)] | 
\set Score.measureLength = #(ly:make-moment 9 16)
a16([ g)] g8\prall([ f16)] f8~\noBeam([ f32 g f ees)] | 
\set Score.measureLength = #(ly:make-moment 13 16)
d16([ ees)] f8\noBeam g16([ f)] \afterGrace f8.( {g16[ f ees)] } d4 |
\set Score.measureLength = #(ly:make-moment 9 16)
c8\noBeam d8.\noBeam d8 r8 
\bar ":|" 
}
\addlyrics { Раз- бо- лял ми съ~й млад Ми- лен, млад Ми- лен, 
мла- да вой- во- да,
все ле- жи де- вет го- ди- ни, де- вет пос- те- ли е съ- драл }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
 }
\header{
  opus = "ТД-170,1,8"
  tagline = ##f
}


