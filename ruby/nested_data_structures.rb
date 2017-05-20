


wildflower_triathlons = {	
	triathlon_1: {
		race_name: "Wildflower Olympic Course",
		location: "Lake San Antonio",
		date: "May 1, 2004",
		scotts_time: {
			swim_time: 35,
			transition_1_time: 7,
			bike_time: 113,
			transition_2_time: 4,
			run_time: 65,
			overall_time: 224
		},
		top_5_in_scotts_age_group: ["Ignacio Rodriguez","Peter Mendes","Kevin Kenny","Christopher Gaston","Kevin Everett"]
	},

	triathlon_2: {
		race_name: "Wildflower Olympic Course",
		location: "Lake San Antonio",
		date: "May 1, 2005",
		scotts_time: {
			swim_time: 38,
			transition_1_time: 6,
			bike_time: 107,
			transition_2_time: 3,
			run_time: 69,
			overall_time: 223
		},
		top_5_in_scotts_age_group: ["Kevin Everett","Ignacio Rodriguez","Peter Mendes","Kevin Kenny","Christopher Gaston"]
	},

	triathlon_3: {
		race_name: "Wildflower Long Course",
		location: "Lake San Antonio",
		date: "May 6, 2006",
		scotts_time: {
			swim_time: 51,
			transition_1_time: 10,
			bike_time: 266,
			transition_2_time: 5,
			run_time: 186,
			overall_time: 518
		},
		top_5_in_scotts_age_group: ["Kelly Williamson","Thomas Liby","Chris Danesi","Van McCarty","Peter Ohotnicky"]
	}
}
	

# DRIVER CODE

# Access the bike time from Scott's finishing results of his second triathlon
p wildflower_triathlons[:triathlon_2][:scotts_time][:bike_time]

#Access the name of the second finisher in Scott's age group in Scott's first triathlon
p wildflower_triathlons[:triathlon_1][:top_5_in_scotts_age_group][1]

#Access the times for swim, transition 1, bike, transition 2, run, and overall for Scott's third triathlon
wildflower_triathlons[:triathlon_3][:scotts_time].each {|key,value| p "#{key} is #{value}"}

#Access the alphabetized list of the top 5 age group finishers in Scott's first triathlon
p wildflower_triathlons[:triathlon_1][:top_5_in_scotts_age_group].sort

# Access the event dates for each of the three triathlons that Scott competed in.
wildflower_triathlons.each {|key,value| p "Date: #{value[:date]}"}