import SwiftUI

/// CI でビルドする最小構成のサンプル画面。地球のシンボルと挨拶を表示します。
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
