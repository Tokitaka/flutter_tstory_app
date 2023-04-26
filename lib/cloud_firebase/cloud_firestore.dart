import 'package:tstory_app/main.dart';

void addNewPost() {
  firestore.collection('posts').add({
    'title' : 'Meet the ‘Gig Slut’, a 74-Year-Old Who Just Loves Live Music',
    'content' : 'Roger Mairlot remembers the date 22nd March, 2014 well: It was the day he broke his personal record of going to the most gigs in one night. “Some people climb mountains, others run marathons; well, I do extreme gigging,” says the 74-year-old, who’s been gigging nearly every single day since he retired in 2008.',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'Is This Elon Musk’s Burner Twitter Account?',
    'content' : 'The account was created in November, with its first tweet being on the 13th, just weeks after Musk completed his purchase of Twitter. The account’s first like is of an Elon Musk tweet containing the tombstone emoji and the bot emoji, alluding to Musk’s commitment to stamping out Twitter’s bot problem. In one tweet, @ErmnMusk replied “Wow!” to a CNBC tweet about a test of Tesla’s self-driving capabilities, and in another case replied to an Elon Musk tweet sharing a meme about former FTX CEO Sam Bankman-Fried. ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'America\'s Most Influential Conspiracy Theorists Are Going All-In On Transphobia',
    'content' : 'His new views on gender and sexuality reflect that shift. In more recent videos, all made in the last few months, Sears has squeezed into women’s bathing suits and sports bras to mock transgender athletes; squeezed himself into a red mini-dress to make a mock ad for a chocolate “based on gender ideology”; and squeezed himself into a ripped tank top and clownish makeup to make a faux advocacy video calling for “banning women in women’s sports.” (Sears did not respond to a request for comment on, among other topics, why he finds so many pretexts to wear women’s clothes.) ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'Undercover Cops Sold a Drug Dealer 60 Pounds of Meth and Let Them Get Away',
    'content' : '“Deputies from the Gang Task Force attempted a vehicle stop,” the press release said. “The suspect failed to yield, and a pursuit was initiated. Due to the high speeds and suspect’s disregard for public safety, deputies lost sight of the vehicle.”The department also did not say how much the suspect spent on the meth, though the Los Angeles Times reported the amount to be 35,000. A 2019 law enforcement report on meth in Central Valley California said the wholesale cost can be as low as 1,400 a pound.  ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'Way Day, Wayfair\'s Biggest Blowout Sale of the Year, Is Almost Here',
    'content' : 'If you’ve been paying attention, you already know we’re hopelessly addicted to amazing deals and steals, but Wayfair\'s two-day Way Day 2023 sale taking place on April 26–27 this year is… different. Besides Prime Day, Black Friday, and Cyber Week, it’s our—and we’re not joking—favorite shopping holiday of the year. While it’s not a bank holiday (get on that, Uncle Sam), it does let you keep more of your money in said bank, with insane discounts and markdowns on home goods, furniture, accessories, and more.',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'The Best Food Gifts for Your Mom and Her Giant Perfect Lasagna',
    'content' : 'Food gifts are kind of foolproof, if you think about it. If you’re giving someone an edible present, you’re also giving them the gift of more personal time spent not cooking, which means you’re also giving them the gift of feeling seen and valued and in need of a break. It is a very emotionally loaded cookie, my friend. And we love it. As the prime ragazza of our life, it feels really good to give something like that to mother. ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'What It’s Like Getting Paid to Be a Human Lab Rat',
    'content' : 'Given the ongoing cost-of-living crisis in the UK, these trials are an enticing money-maker, particularly for students and young professionals. Many of them also market themselves as virtually risk-free (convenient!). But is it all as easy as it seems? Is it really £4,000-odd for lying in a bed for two weeks? Is all this relentless advertising and encouraging people to monetise their health a bit icky when many face serious financial hardship?',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'Behind the Scenes at the Red Carpet Premiere of ‘100 Days to Indy’',
    'content' : 'This year, VICE has got the inside track with our new docuseries, 100 Days to Indy. Our talented team, led by Emmy Award-winning director Patrick Dimon, went behind the scenes to get an inside look at the fascinating world of IndyCar racing. At our LA premiere, we welcomed IndyCar Series champions Will Power, Josef Newgarden, and Scott McLaughlin of Team Penske; Simon Pagenaud of Meyer Shank Racing, and Marcus Ericson of Chip Ganassi Racing – the Indy 500 winners of 2019 and 2022, respectively. ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'A Mysterious Mayan Calendar Stumped Scientists for Decades. A New Study Has Cosmic Answers.',
    'content' : 'Instead of finding cycles that fit within the 819-day count, Linden and Bricker envisioned the calendar as one cycle in a much larger timescale. By multiplying this single unit of 819 days, it’s possible to produce elegant matches with the synodic periods of the planets. For instance, Mars’ synodic period of 780 days is equal to 20 times 819, while Jupiter’s 399 day period is equal to 39 times 819, and so on.The new study provides a satisfying solution to the perplexing 819-day calendar, but it’s not likely to be the end of the story. Maya researchers are constantly discovering incredible details about this rich Mesoamerican culture that upend our current assumptions. While the riddle of this fascinating calendar may have been solved, many more mysteries about Maya culture remain. ',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('posts').add({
    'title' : 'Texas Agency Threatens to Fire People Who Don’t Dress ‘Consistent With Their Biological Gender’',
    'content' : 'The internal department memo is just the latest attempt by state officials in Texas to crack down on trans and gender non-conforming people. Republican Gov. Greg Abbott ordered the state agency overseeing child protective services to investigate the parents of transgender children for child abuse last year, and a bill to ban transition-related care for minors is currently moving through the legislature. “Appropriate” attire for women, as defined by the memo, includes not showing “excessive cleavage” and says skirts must be “within four inches of the knee” (however, “pants and Western apparel are allowable"). The expectations for men, on the other hand, are essentially to wear button-down shirts and socks, according to the memo published by the Observer, though shirts “must be tucked in.”',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));
}

void addNewUser() {
  firestore.collection('users').add({
    'username' : 'London',
    'email' : 'london@vice.com',
    'password' : '1234',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('users').add({
    'username' : 'Sydney',
    'email' : 'sydney@vice.com',
    'password' : '1234',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore.collection('users').add({
    'username' : 'Taiti',
    'email' : 'taiti@vice.com',
    'password' : '1234',
  }).then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));
}