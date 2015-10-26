# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# shovel authors here?
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
	 {image: "http://i.imgur.com/mkaIiWb.gif"}], 
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

quotes = []
events = []
