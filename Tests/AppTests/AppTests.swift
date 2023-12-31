@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testHelloWorld() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertContains(res.body.string, "Hello, World!")
        })
    }
}
