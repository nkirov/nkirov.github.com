%{
BA_2_1_40
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  d4^"I" d |  
  \afterGrace d4( { \stdB c8) \stdE } c8( b) | d4 d | 
  \afterGrace d4( { \stdB c8) \stdE } c8( b) | 
  a8\noBeam a a4 | b2 | 
\break  
  b8( c) d4 | d8( c) c4 | e8 e4( d8) | d4 d8( c) | c8\noBeam a a8\noBeam a8 | a2  
 \bar "||" \break
e'4^"II" e8( d) | d8( c) c4 | e4 e8( d) | d8( c) c8( b) | a8\noBeam a a4 | b4 r4 | 
\break
b8( c) d4 | d8( c) c8( b) | b8( c) d4 | d8( c) c8( b) | a8\noBeam a a4 | a4 r4 
 \bar "|."
}
\addlyrics { Ген- чо "ша~й-" ди, Ген- чо "ша~й-" ди на ха- джи- лък, 
а- ла ни- ще, а- ла ни- ще си- га да и- де. 
Той ша же- ни, той ша же- ни дъ- ще- ря си, 
дъ- ще- ря си, дъ- ще- ря си бя- ла Бо- на }
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
  opus = "ВА-2,1,40"
  tagline = ##f
}


