\version "2.12.3"

fixB = { \override Stem #'transparent = ##t  }

\paper {
  #(set-paper-size "a6")
  myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
}

\score {
  \relative c'' {
\cadenzaOn
\fixB e4 ^"td_135_1_27" d2 c2 b2 a2 

}
\addlyrics {"     2" "     2" "     1" "     2" 
}  
%
\layout {
     	\context { 
	  	\Staff \remove "Time_signature_engraver" } 
	\context {
		\Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \remove "Bar_number_engraver"
  }
	    
  indent = #0
  line-width = 80\mm
  ragged-right=##t
}
}
%
\header {
  tagline = ##f
}


