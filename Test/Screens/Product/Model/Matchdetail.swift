/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Matchdetail : Codable {
	let team_Home : String?
	let team_Away : String?
	let match : Match?
	let series : Series?
	let venue : Venue?
	let officials : Officials?
	let weather : String?
	let tosswonby : String?
	let status : String?
	let status_Id : String?
	let player_Match : String?
	let result : String?
	let winningteam : String?
	let winmargin : String?
	let equation : String?

	enum CodingKeys: String, CodingKey {

		case team_Home = "Team_Home"
		case team_Away = "Team_Away"
		case match = "Match"
		case series = "Series"
		case venue = "Venue"
		case officials = "Officials"
		case weather = "Weather"
		case tosswonby = "Tosswonby"
		case status = "Status"
		case status_Id = "Status_Id"
		case player_Match = "Player_Match"
		case result = "Result"
		case winningteam = "Winningteam"
		case winmargin = "Winmargin"
		case equation = "Equation"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		team_Home = try values.decodeIfPresent(String.self, forKey: .team_Home)
		team_Away = try values.decodeIfPresent(String.self, forKey: .team_Away)
		match = try values.decodeIfPresent(Match.self, forKey: .match)
		series = try values.decodeIfPresent(Series.self, forKey: .series)
		venue = try values.decodeIfPresent(Venue.self, forKey: .venue)
		officials = try values.decodeIfPresent(Officials.self, forKey: .officials)
		weather = try values.decodeIfPresent(String.self, forKey: .weather)
		tosswonby = try values.decodeIfPresent(String.self, forKey: .tosswonby)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		status_Id = try values.decodeIfPresent(String.self, forKey: .status_Id)
		player_Match = try values.decodeIfPresent(String.self, forKey: .player_Match)
		result = try values.decodeIfPresent(String.self, forKey: .result)
		winningteam = try values.decodeIfPresent(String.self, forKey: .winningteam)
		winmargin = try values.decodeIfPresent(String.self, forKey: .winmargin)
		equation = try values.decodeIfPresent(String.self, forKey: .equation)
	}

}