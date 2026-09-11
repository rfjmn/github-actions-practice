// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct GitHubActionsPractice {
    static func main() {
        print(Self().greeting())
    }

    func greeting() -> String {
        "Hello, World"
    }

    func isEven(_ number: Int) -> Bool {
        number % 2 == 0
    }

    func isOdd(_ number: Int) -> Bool {
        !isEven(number)
    }
}
