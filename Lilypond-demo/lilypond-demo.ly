\version "2.20.0"
\language english

\header {
  title = "Mary Had a Little Lamb"
  subtitle = "玛丽有只小羊羔"
  copyright = "Engraved by Jia-Lin Chen -- github.com/Chen-Jialin"
}

\paper{
  #(set-paper-size "a4")
  print-page-number = ##t
  page-number-type = #'arabic
  print-first-page-number = ##t
  first-page-number = 1
  tagline = ##f
}

upper = \relative c'{
  \clef treble
  \key c \major
  \time 4/4

  e4 d c d | e e e2 | d4 d d2 | e4 e e2 |
  e4 d c d | e e e c | d d e d | c1 |
}

lower = \relative c'{
  \clef bass
  \key c \major
  \time 4/4

  g1 | c, | g' | c, |
  g' | c, | g' | c, |
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    \context{
      \Score proportionalNotationDuration = #(ly:make-moment 1/8)
    }
  }
  %\midi { }
}