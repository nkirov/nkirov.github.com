%{
BA_2_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  a4 d | d8->( c) b( g) | c8->( b) b( c) | c->( b) a4 | 
\varA  
d->\startTextSpan d\stopTextSpan | 
\varB
c\startTextSpan e\stopTextSpan | 
d8->( c) b( g) | d'8->( c) c4 | c8->( b) a4 | a a    
 \bar ":|" 
\endm
\varA  
d->\startTextSpan d8( c\stopTextSpan) \bar "||"
\varB
c4\startTextSpan d\stopTextSpan 
\bar "|."
}
\addlyrics { Про- вик- на са зи- лен кръ- вен здра- вец, про- вик- на са 
от Ста- ра пла- ни- на: }
\addlyrics { Мно- го здра- ви на мал- ки- ти мо- ми, не- ка до- дат 
зи- лен да ма бье- рат }
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
  opus = "ВА-2,2,13"
  tagline = ##f
}


