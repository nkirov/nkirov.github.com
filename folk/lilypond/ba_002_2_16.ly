%{
BA_2_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b8( c) d4 | c8( b) c4 | d4 c8( b) | c4 c | b8( c) d4 | c8( b) c4 | d4 c8( b) | c4 c8( b) | d8( ees) ees8( d) | d4. c8 | 
\override Glissando #'style = #'zigzag
\noteFi b4\glissando a | d8( ees) ees8( d) | c4 d8( c) | d4. c8 | b4 a | a a  
 \bar "|." 
}
\addlyrics { Ма- ри бу- льо Га- джо- ви- це, 
ма- ри бу- льо Га- джо- ви- це, би- ла ли си ба- тя Га- джа, 
би- ла ли си ба- тя Га- джа }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-2,2,16"
  tagline = ##f
}


