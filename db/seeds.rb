# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



books = [
	[{title: "The XX Factor"},
	 {date: "2013"},
	 {image: "http://i.imgur.com/f0jA4Lj.jpg"}],
	[{title: "Bad Feminist"},
	 {date: "2014"},
	 {image: "http://i.imgur.com/O5z6tNo.jpg"}],
	[{title: "The Feminist Porn Book"},
	 {date: "2013"},
	 {image: "http://i.imgur.com/0I0WzXO.jpg"}],
	[{title: "Feminism Unfinished"},
	 {date: "2015"},
	 {image: "http://i.imgur.com/iacNp7H.jpg"}],
	[{title: "Separate and Dominate"},
	 {date: "2015"},
	 {image: "http://i.imgur.com/XmnzErv.jpg"}], 
	[{title: "Talking Back"},
	 {date: "1988"},
	 {image: "http://i.imgur.com/ls4a0jo.jpg"}], 
	[{title: "Hard to Get"},
	 {date: "2013"},
	 {image: "http://i.imgur.com/heSpO0v.jpg"}], 
	[{title: "Lean In"},
	 {date: "2013"},
	 {image: "http://i.imgur.com/nqIrmix.jpg"}], 
	[{title: "Pussy Riot, A Punk Prayer for Freedom"},
	 {date: "2012"},
	 {image: "http://i.imgur.com/uf8Jr5o.jpg"}], 
	[{title: "A Class by Herself"},
	 {date: "2015"},
	 {image: "http://i.imgur.com/mkaIiWb.gif"}], 
	[{title: "Woman, An Intimate Geography"},
	 {date: "2014"},
	 {image: "http://i.imgur.com/23UsK8R.jpg"}], 
	[{title: "Beyond the Pale"},
	 {date: "1992"},
	 {image: "http://i.imgur.com/HWA0Zwh.jpg?1"}], 
]

books.each do |x|
	Book.create(title: x[0][:title], date: x[1][:date], image: x[2][:image])
end

influencers = [
	# the xx factor
	[{name: "Alison Wolf"},
	 {author: true},
	 {image: "http://i.imgur.com/QQdND1R.jpg"}],
	# bad feminist
	[{name: "Roxan Gay"},
	 {author: true},
	 {image: "http://i.imgur.com/BDdPBpj.jpg"}],
	# the feminist porn 
	[{name: "Mireille Miller-Young"},
	 {author: true},
	 {image: "http://i.imgur.com/ZY3KJwz.jpg"}],
	[{name: "Tristan Taormino"},
	 {author: true},
	 {image: "http://i.imgur.com/Hu97b8z.jpg"}],
	[{name: "Celine Parrenas Shimizu"},
	 {author: true},
	 {image: "http://i.imgur.com/q1WDUc2.jpg"}],
	[{name: "Constance Penley"},
	 {author: true},
	 {image: "http://i.imgur.com/PaNrWX1.jpg"}],
	# feminism unfinished
	[{name: "Dorothy Sue Cobble"},
	 {author: true},
	 {image: "http://i.imgur.com/y5RaveW.jpg"}],
	[{name: "Linda Gordon"},
	 {author: true},
	 {image: "http://i.imgur.com/NsPGHIf.jpg"}],
	[{name: "Astrid Henry"},
	 {author: true},
	 {image: "http://i.imgur.com/0bH0ViE.jpg"}],
	# separate and dominate
	[{name: "Christine Delphy"},
	 {author: true},
	 {image: "http://i.imgur.com/nxztJkI.jpg"}],
	# talking back
	[{name: "Bell Hooks"},
	 {author: true},
	 {image: "http://i.imgur.com/mha2Jhm.jpg"}],	
	# hard to get
	[{name: "Leslie C. Bell"},
	 {author: true},
	 {image: "http://i.imgur.com/2xT3UR9.jpg"}],	
	#  lean in 
	[{name: "Sheryl Sandberg"},
	 {author: true},
	 {image: "http://i.imgur.com/LmGgISB.jpg"}],
	# pussy riot
	[{name: "The Feminist Press"},
	 {author: true},
	 {image: "http://i.imgur.com/xzdrkBf.png"}],
	# a class by herself
	[{name: "Nancy Woloch"},
	 {author: true},
	 {image: "http://i.imgur.com/jt20tfa.jpg"}],
	# woman
	[{name: "Natalie Angier"},
	 {author: true},
	 {image: "http://i.imgur.com/aGPIAk7.jpg"}],
	# beyond the pale
	[{name: "Vron Ware"},
	 {author: true},
	 {image: "http://i.imgur.com/rNBnv2b.jpg?1"}],
]

influencers.each do |x|
	Influencer.create(name: x[0][:name], author: x[1][:author], image: x[2][:image])
end

quotes = [
	[{quotation: "Feminists once talked of 'the sisterhood', but educated successful women today have fewer interests in common with other women than ever before."},
	 {book_id: 1}],
	[{quotation: "If you watch BET, you get the sense that the only way black people succeed is through professional sports, music, or marrying/fucking/being a baby mama of someone who is involved with professional sports or music."},
	 {book_id: 2}],
	[{quotation: "Our society still can't conceive that a relatively sane young woman would choose to go into sex work for any reason other than desperation."},
	 {book_id: 3}],
	[{quotation: "Today many disavow the term 'feminist', but often what is being rejected is a narrow and distorted version of feminism that bears little resemblance to the rich and varied feminist philosophies of the past."},
	 {book_id: 4}],
	[{quotation: "[This] is a theory of the divisions produced by society. These divisions are both dichotomous and comprehensive. If you are not in one group, you are in the other."},
	 {book_id: 5}],
	[{quotation: "Unfortunately because many black girls speak out unenlightened feminist thinkers have seen these speech acts as performances of power when they may more accurately simply be a reflection of different cultural values."},
	 {book_id: 6}],
	[{quotation: "Queer theorists emerged and critiqued the feminist movement for depicting women in an essentialist way, equating female bodies with only particular versions of feminitiy and not seeing possibilities for more fluid versions of gender."},
	 {book_id: 7}],
	[{quotation: "Anyone who wants her mate to be a true partner must treat him as an equal- and equally capable- partner."},
	 {book_id: 8}],
	[{quotation: "They were busy with self-education or training or taking action out of virtue. Philosophers should not merely describe the world, but change it."},
	 {book_id: 9}],
	[{quotation: "Protective labor legislation lies at a crossroads where women's history and legal history converge."},
	 {book_id: 10}],
	[{quotation: "It is a book about things that we traditionally associate with the image of woman- the womb, the egg, the breast, the blood, the almighty clitoris- and things that we don't- movement, strength, aggression, and fury."},
	 {book_id: 11}],
	[{quotation: "I believe that white feminists today... are often ridden with white solipsism- not the consciously held belief that one race is inherently superior to all others, but a tunnel-vision which simply does not see nonwhite experience or existence as precious or significant, unless in spasmodic, impotent guilt-reflexes, which have little or no long-term, continuing momentum or political usefulness."},
	 {book_id: 12}],
]

quotes.each do |x|
	Quote.create(quotation: x[0][:quotation], book_id: x[1][:book_id])
end

Book.find(1).influencers << Influencer.find(1)
Book.find(1).quotes << Quote.find(1)

Book.find(2).influencers << Influencer.find(2)
Book.find(2).quotes << Quote.find(2)

Book.find(3).influencers << [Influencer.find(3),
														 Influencer.find(4),
														 Influencer.find(5),
														 Influencer.find(6)]
Book.find(3).quotes << Quote.find(3)

Book.find(4).influencers << [Influencer.find(7),
 														 Influencer.find(8), 
 														 Influencer.find(9)]
Book.find(4).quotes << Quote.find(4)

Book.find(5).influencers << Influencer.find(10)
Book.find(5).quotes << Quote.find(5)

Book.find(6).influencers << Influencer.find(11)
Book.find(6).quotes << Quote.find(6)

Book.find(7).influencers << Influencer.find(12)
Book.find(7).quotes << Quote.find(7)

Book.find(8).influencers << Influencer.find(13)
Book.find(8).quotes << Quote.find(8)

Book.find(9).influencers << Influencer.find(14)
Book.find(9).quotes << Quote.find(9)

Book.find(10).influencers << Influencer.find(15)
Book.find(10).quotes << Quote.find(10)

Book.find(11).influencers << Influencer.find(16)
Book.find(11).quotes << Quote.find(11)

Book.find(12).influencers << Influencer.find(17)
Book.find(12).quotes << Quote.find(12)



events = []


