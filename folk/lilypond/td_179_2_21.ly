%{
TD_179_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
\parS  
 g8([ f)] f4 f8-\parenthesize-\prall( ees) d4  d2 | d8( ees) f4 |
 \varAB
 \acciaccatura f8\startTextSpan g4.( f8\stopTextSpan) |
 g8( f) f4 f8( ees) d4 d4.^\rtoe( c8) | d8\noBeam d4. | d4 r4
 \bar "|." 
 s4 \fixB bes4 \fixC
 \bar "|."
 \endm
 \varA
 \acciaccatura f'8\startTextSpan g4.( \times 2/3 { a16[ g f]\stopTextSpan) } \bar "||"
\varB
\acciaccatura f8\startTextSpan g4( \times 2/3 { a16[ g f]\stopTextSpan) }
\bar "|."
}
\addlyrics { Бър- за- ла~й Цвя- та, Цве- те мо, за Ве- лик- дян за вто- рий ден }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-179,2,21"
  tagline = ##f
}


