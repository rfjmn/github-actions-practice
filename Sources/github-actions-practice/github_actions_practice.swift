// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct GitHubActionsPractice {
    static func main() {
        print("Hello, world")
    }

    func greeting() -> String {
        "Hello, World"
    }

    func isEven(number: Int) -> Bool {
        number % 2 == 0
    }

    func isOdd(number: Int) -> Bool {
        !isEven(number: number)
    }
}
