%{
TD_121_2_08
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 7
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #10
  \rhythmMarkA \rhyMarkAAAdot #"52"
%  
\varA
g8\startTextSpan a16([ b)] c8([ b16\stopTextSpan)] | 
\varB
\acciaccatura c8\startTextSpan d4~( d8[ e16\stopTextSpan]) | 
\parS
c([ b)] a([ b)] c8-\parenthesize\prall([ b16)] |
\set Score.measureLength = #(ly:make-moment 8 16)
\override Glissando #'style = #'zigzag
\acciaccatura c8 d4~ \noteFi d8.\glissando \hideNotes a16 \unHideNotes 
\set Score.measureLength = #(ly:make-moment 7 16)
g8 a16([ b)] c8([ b16)] | c16([ d)] c([ b)] a8. | 
\varC
a8\startTextSpan r c-\parenthesize\prall([ b16\stopTextSpan)] | 
\varA
g8\startTextSpan a16([ b)] c8([ b16\stopTextSpan)] |
c16([ d)] c([ b)] a8. | a4 a8.
 \bar "|." 
s8 s16 \fixB a,4 \fixC
 \bar "|."
% 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
%\break
\varA
g'8\startTextSpan a16([ b)] c8.\stopTextSpan  \bar "||" 
\varB
c8([\startTextSpan d]~ d[ e16\stopTextSpan])  \bar "||"
\varC
a,8.([\startTextSpan b16)] c8([ b16\stopTextSpan)]  
\bar "|." 
}
\addlyrics { Дра- гин- ко льо, Па- на- йо- те, " " що тъй си мъ- дър- 
ка- хъ- рин,
що тъй си  мъ- дър- ка- хъ- рин }
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
		tempoWholesPerMinute = #(ly:make-moment 60 2)
		}
	}
}
%
\header{
  opus = "ТД-121,2,8"
  tagline = ##f
}


