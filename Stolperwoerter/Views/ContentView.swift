import SwiftUI

struct ContentView: View {
    @State private var currentWord: StolperWord
    @State private var fontSize: CGFloat = 100
    @State private var showingInfo = false
    
    init() {
        _currentWord = State(initialValue: WordService.shared.getNextWord())
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(UIColor.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                
                Text(currentWord.word)
                    .font(.system(size: fontSize))
                    .minimumScaleFactor(0.1)
                    .lineLimit(1)
                    .padding()
                    .onAppear {
                        adjustFontSize(for: geometry.size)
                    }
                
                InfoButton(showingInfo: $showingInfo)
            }
            .onTapGesture {
                withAnimation {
                    currentWord = WordService.shared.getNextWord()
                    adjustFontSize(for: geometry.size)
                }
            }
            .sheet(isPresented: $showingInfo) {
                InfoView()
            }
        }
    }
    
    private func adjustFontSize(for size: CGSize) {
        let wordLength = CGFloat(currentWord.word.count)
        let screenWidth = size.width
        fontSize = min(screenWidth / (wordLength * 0.6), size.height / 2)
    }
} 