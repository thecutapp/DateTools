import Foundation
import XCTest
import DateToolsSwift

final class BundleTests: XCTestCase {
    func testLocalizedStringsAreIncluded() throws {
        let bundle = Bundle.dateToolsBundle()
        let url = try XCTUnwrap(bundle.url(forResource: "DateTools", withExtension: "strings", subdirectory: nil, localization: "en"))
        XCTAssertFalse(try Data(contentsOf: url).isEmpty)
    }
}
