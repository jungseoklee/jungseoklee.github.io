#include "analytics.typ"

#import "resume.typ": resume-body

#set document(title: [Jungseok Lee])
#show link: it => {
  html.elem("a", attrs: (href: str(it.dest), target: "_blank", rel: "noopener"))[#it.body]
}
#html.elem("style")[
  li > p { margin: 0 0 0.2em 0; }
  li > ul { margin-top: 0.2em; margin-bottom: 0.4em; }
  hr { margin: 1.5em 0; }
]

#resume-body

#html.elem("hr")[]
#html.elem("a", attrs: (
  href: "/resume.pdf",
  download: "Jungseok-Lee-Resume.pdf"
))[Download Resume]
