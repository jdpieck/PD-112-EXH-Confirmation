#let exhibit-name = sys.inputs.at("org", default: "[exhibit name]")
#let contact = sys.inputs.at("contact", default: "[contact]")
#let location = sys.inputs.at("location", default: "[location]")
#let outdoor = sys.inputs.at("outdoor", default: "Yes")
#let setup = sys.inputs.at("setup", default: "12:00PM")
#let start = sys.inputs.at("start", default: "12:00PM")
#let end = sys.inputs.at("end", default: "12:00PM")
#let clean-up = sys.inputs.at("clean-up", default: "2:00 PM")
          
#let email = link("mailto:exhibits@picnicday.ucdavis.edu", [exhibits\@picnicday.ucdavis.edu])
#let phone = "(530) 752-8320"

#import "template.typ": *
#show: template


Dear #contact,
= Welcome to Picnic Day! #emoji.party
Thank you for submitting an application to be an Exhibit for Picnic Day 112! *We would like to inform you that your exhibit, #exhibit-name, has been approved!*

Please keep this confirmation letter in your records, as it, along with your application and signature, indicates that you abide by and agree to all of the policies, rules, and expectations outlined within the #link("https://docs.google.com/document/d/1SAOevwDwrcAaGGFk3lFC3marKcyRpyR0hDFLckyFlh0/edit?usp=sharing")[Exhibits Information Packet], and #link("https://picnicday.ucdavis.edu/")[Picnic Day website]. Any violation of these expectations can result in ineligibility to participate in future Picnic Day Events.

== Event Information
Here is the specific information regarding your exhibit:

#table(
  columns: 2,
  [Location], [#location 
  // #if outdoor == "Yes" [(Outdoors)] else [(Indoors)]
  ] ,
  [Arrival/Setup], setup, 
  [Event Running], [#start to #end],
  [Clean Up By], clean-up,
)

Please review the following important information as well.

=== Rain 
A rain plan will be instituted in the event that rain does not permit any outdoor events. You will be notified the day before if it needs to be carried out.

=== Parking
Parking is free but very limited, competitive, and not guaranteed. We strongly recommended that you arrive early, to increase your odds of securing a parking spot. Parking violations will result in the vehicle being towed at the owner’s expense.

=== Vehicle Loading/Unloading Permits
If applicable and if approved, loading/unloading permits will be available for pick up in the Picnic Day Office, 349 Memorial Union. We will contact you separately if you have requested a parking permit.

*Please note:* ALL gates to the campus will close at 9:00 AM and will reopen after the parade, at which time, no other vehicles are permitted to enter or exit the campus.

=== Hygiene
If your Exhibit allows participants to touch elements (e.g. craft supplies, instruments, etc.), please thoroughly sanitize between uses, and place hand sanitizers at strategic locations.

== Final Reminders
Please keep in mind that Picnic Day strives to be a Zero-Waste event. For additional information, see #link("https://www.ucop.edu/sustainability/_files/zero-waste-events.pdf")[Zero Waste Events Pledge].

Once again, thank you for your application! It is because of exhibits like yours that allow Picnic Day to be a great success. If you have any questions or concerns hereafter, please feel free to contact me at #email, and we will address any
questions or concerns as soon as possible.


Sincerely,

#let staff = (
  (name: "Andrew Chik", role: "Picnic Day 112 Exhibits Director"),
  (name: "Aarzoo Patel", role: "Picnic Day 112 Exhibits Assistant Director"),
  (name: "Azra Ilhan", role: "Picnic Day 112 Exhibits Assistant Director"),
  (name: "Ziyu Xu", role: "Picnic Day 112 Exhibits Assistant Director"),
)

#show grid: set par(justify: false)
#grid(
  gutter: .25in,
  columns: 2,
  ..staff.map(it => [
    *#it.name* \
    #emph[#it.role] 
  ]
)
)