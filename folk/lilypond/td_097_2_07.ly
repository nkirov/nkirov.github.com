%{
laz_097_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 200
 \time 3/8
c8 c([ b]) | a a4 | c8 c([ b]) | a4. | c8 c[( b)] | a b([ a]) | g g4 | g4. 
 \bar "|."
 s8 \fixB d4
\bar "|." 
}
\addlyrics { Де- ми- ро льо, Бо- я- но, о- ти- де си Ла- за- ра }
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
		tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-97,2,7"
  tagline = ##f
}


