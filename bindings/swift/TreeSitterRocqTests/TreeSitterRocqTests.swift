import XCTest
import SwiftTreeSitter
import TreeSitterRocq

final class TreeSitterRocqTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_rocq())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Rocq grammar")
    }
}
