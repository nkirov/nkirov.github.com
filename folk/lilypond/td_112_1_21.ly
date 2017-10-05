%{
td_112_1_21
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"69"
%\cadenzaOn
\time 7/16
\varA
a4\startTextSpan a16 d8\noBeam\stopTextSpan | 
d16[( c]) c8\noBeam~ c8. | 
\varB
\parS
d8\startTextSpan d\noBeam c-\parenthesize\prall[( b16\stopTextSpan]) | 
\varC
a4\startTextSpan a16 d8\stopTextSpan\noBeam |
d16[( c]) c8\noBeam(~ c[ b16]) | \acciaccatura c8 d d\noBeam c[( b16]) | a4 c8 b16\noBeam |
c16[( b]) a8\noBeam(~ a[ g16]) | d'8 d\noBeam c[( b16]) | a4 c8\noBeam b16 | 
c[( d]) a8\noBeam~ a8. | a8 a\noBeam a8.
 \bar "|." 
s8. \fixB b,4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
a'4\startTextSpan a8 d16\noBeam\stopTextSpan \bar "||"
\varB
\acciaccatura c8\startTextSpan d8 d\noBeam c-\parenthesize\prall[( b16\stopTextSpan]) \bar "||"
\varC
a4\startTextSpan a8 d16\stopTextSpan\noBeam 
 \bar "|."  
}
\addlyrics { Цъф- на- ло~й бя- ло ко- ки- че,  цъф- на- ло~й бя- ло ко- ки- че,
на Бой- ня- ни- те пен- дже- ри, на Бой- ня- ни- те пен- дже- ри }
%
\layout {
%%   \context { 
%%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,21"
  tagline = ##f
}


