//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EnumArrays: APIModel {

    public enum ArrayEnum: String, Codable {
        case fish = "fish"
        case crab = "crab"
        public static let cases: [ArrayEnum] = [
          .fish,
          .crab,
        ]
    }

    public enum JustSymbol: String, Codable {
        case greaterThanOrEqualTo = ">="
        case dollar = "$"
        public static let cases: [JustSymbol] = [
          .greaterThanOrEqualTo,
          .dollar,
        ]
    }

    public var arrayEnum: [ArrayEnum]?

    public var justSymbol: JustSymbol?

    public init(arrayEnum: [ArrayEnum]? = nil, justSymbol: JustSymbol? = nil) {
        self.arrayEnum = arrayEnum
        self.justSymbol = justSymbol
    }

    private enum CodingKeys: String, CodingKey {
        case arrayEnum = "array_enum"
        case justSymbol = "just_symbol"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        arrayEnum = try container.decodeArrayIfPresent(.arrayEnum)
        justSymbol = try container.decodeIfPresent(.justSymbol)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(arrayEnum, forKey: .arrayEnum)
        try container.encodeIfPresent(justSymbol, forKey: .justSymbol)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EnumArrays else { return false }
      guard self.arrayEnum == object.arrayEnum else { return false }
      guard self.justSymbol == object.justSymbol else { return false }
      return true
    }

    public static func == (lhs: EnumArrays, rhs: EnumArrays) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
