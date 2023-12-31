
import Foundation
struct Partnership_Current : Codable {
	let runs : String?
	let balls : String?
	let batsmen : [Batsmen]?

	enum CodingKeys: String, CodingKey {

		case runs = "Runs"
		case balls = "Balls"
		case batsmen = "Batsmen"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		runs = try values.decodeIfPresent(String.self, forKey: .runs)
		balls = try values.decodeIfPresent(String.self, forKey: .balls)
		batsmen = try values.decodeIfPresent([Batsmen].self, forKey: .batsmen)
	}

}
