%{
TD_121_1_12
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 148
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"    
g8 a16([ b)] c8. | c4\prall( d16[ c b)] | 
\override Glissando #'style = #'zigzag
g8 a16([ b)]  \noteFi c8([\glissando b16)] | c4\prall( d16[ c b)] 
\parS
\repeat volta 2 { g8 a16([ b-\parenthesize\prall)] c8([ b16)] | c16([ d)] c([ b)] a8. }
\alternative { { a4 d8 r16 }
{ a4 a8. } }
 \bar "|." 
s8. \fixB g4
 \bar "|." 
}
\addlyrics { Дра- гин- ко льо, Па- на- йо- те, 
що тъй си мъ- дър- ка- хъ- рен хъ- рен }
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
		tempoWholesPerMinute = #(ly:make-moment 148 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,12"
  tagline = ##f
}


