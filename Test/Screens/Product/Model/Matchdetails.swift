

import Foundation
struct Matchdetails : Codable {
	let matchdetail : Matchdetail?
	let nuggets : [String]?
	let innings : [Innings]?
	let teams : Teams?
	let notes : Notes?

	enum CodingKeys: String, CodingKey {

		case matchdetail = "Matchdetail"
		case nuggets = "Nuggets"
		case innings = "Innings"
		case teams = "Teams"
		case notes = "Notes"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		matchdetail = try values.decodeIfPresent(Matchdetail.self, forKey: .matchdetail)
		nuggets = try values.decodeIfPresent([String].self, forKey: .nuggets)
		innings = try values.decodeIfPresent([Innings].self, forKey: .innings)
		teams = try values.decodeIfPresent(Teams.self, forKey: .teams)
		notes = try values.decodeIfPresent(Notes.self, forKey: .notes)
	}

}
