import Testing
@testable import github_actions_practice

@Test("実行時と共通の挨拶を返す")
func greeting() {
    #expect(GitHubActionsPractice().greeting() == "Hello, World")
}

@Test("負数・ゼロ・整数の境界でも偶奇を判定する", arguments: [
    (Int.min, true), (-3, false), (-2, true), (-1, false),
    (0, true), (1, false), (2, true), (3, false), (Int.max, false)
])
func parity(number: Int, isEven: Bool) {
    let example = GitHubActionsPractice()
    #expect(example.isEven(number) == isEven)
    #expect(example.isOdd(number) == !isEven)
}
