%{
BA_3_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \repeat volta 2 { g4 a | d d8( c) | c8( b) a4 | g8( fis) e4 | g4 a }
  \alternative { { d d8( c) | c8( b) a4 | a a }
%% \bar ":|"
{ c4 c8( b) | b4 a | a a } }
 \bar "|."
}
\addlyrics { И- ван Ру- ски йот- го- ва- ря: Ма- ри Ру- ске, кон- су Ру- ске  }
\addlyrics { Ма- ри Ру- ске, кон- су Ру- ске, о- пу- " " " " " " " " " " " " стял ти кон- су- лу- ка }
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
  opus = "ВА-3,1,11"
  tagline = ##f
}


