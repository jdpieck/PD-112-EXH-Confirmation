#let template(body) = {

  set document(
    title: "Picnic Day 112 Performance Acceptance Letter",
    author: "Jason Pieck, Picnic Day 112 Entertainment Assistant Director"
  )

  let major-margin = 1.125in
  
  set page(
    margin: (bottom: 1in,
            rest: major-margin),
    footer-descent: 14%,
    footer: [
      #set text(.8em)
      Picnic Day \
      349 Memorial Union, One Shields Avenue #h(1fr) http://picnicday.ucdavis.edu \
      Davis, CA 95616 #h(1fr) Phone: (530) 752-8320
    ]
  )
  
  set text(
    11pt,
    // font: "Cantarell",
    font: "Albert Sans"
  )

  set list(
    indent: 0.7em
  )

  set par(
    justify: true
  )

  // show heading.where(level: 3): emph


  show link: underline
  show link: set text(fill: blue.darken(50%))


  show table.cell.where(x: 0): strong
  // show table.cell.where(x: 1): strong
  
  place(
    top + center, 
    dy: -1* major-margin,
    // dx: -1in,
    float: true,
    image(
      "Untitled_Artwork 30.png", 
      width: 8.3in,
      alt: "The Journey Home \n Pinic Day 2026 | UC Davis & ASUCD"
    ) 
  )
  
  v(-1 *major-margin + .25in)
  
  body
}