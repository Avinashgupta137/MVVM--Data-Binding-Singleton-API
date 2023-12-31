

import Foundation
struct 63751 : Codable {
	let position : String?
	let name_Full : String?
	let batting : Batting?
	let bowling : Bowling?

	enum CodingKeys: String, CodingKey {

		case position = "Position"
		case name_Full = "Name_Full"
		case batting = "Batting"
		case bowling = "Bowling"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		position = try values.decodeIfPresent(String.self, forKey: .position)
		name_Full = try values.decodeIfPresent(String.self, forKey: .name_Full)
		batting = try values.decodeIfPresent(Batting.self, forKey: .batting)
		bowling = try values.decodeIfPresent(Bowling.self, forKey: .bowling)
	}

}
