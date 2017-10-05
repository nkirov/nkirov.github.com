%{
TD_178_1_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 132
  \time 2/4
 fis8 g\noBeam a4 a2 c4 bes a g fis8( ees) ees([ d)] d2  \bar ":|:"
 \repeat volta 2 { g4. fis8
 %%\break
 ees( d) c4 
\varA 
 d\startTextSpan d\stopTextSpan |  
 a'8( g) g4 fis8( ees) ees([ d)] }
 \alternative { { a'2~ a4 r4 } { d,2~ d4 r4 } }
 \bar "|." 
 \endm
 \varA 
 d\startTextSpan ees\stopTextSpan
 \bar "|." 
}
\addlyrics { Ю- нак вър- ви през го- ри- ца зе- ле на, тю- тюн пу- ши със 
лу- ли- ца чер- ве- на на }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-178,1,11"
  tagline = ##f
}


