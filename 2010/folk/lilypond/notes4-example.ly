
fixB = { \override Stem #'transparent = ##t  }  
fixC = { \override Stem #'transparent = ##f  } 
\relative c' {
d4 \fixB e  f \fixC g  g2 \hideNotes a \unHideNotes g4 r r2
}



