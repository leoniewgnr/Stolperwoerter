import SwiftUI

struct ContentView: View {
    @State private var currentWord: StolperWord?
    @State private var fontSize: CGFloat = 100
    @State private var showingInfo = false
    @State private var showingCompletion = false
    
    init() {
        _currentWord = State(initialValue: WordService.shared.getNextWord())
    }
    
    var body: some View {
        GeometryReader { geometry in
            if showingCompletion {
                CompletionView(onRestart: {
                    WordService.shared.reset()
                    currentWord = WordService.shared.getNextWord()
                    showingCompletion = false
                })
            } else {
                ZStack {
                    Color(UIColor.systemBackground)
                        .edgesIgnoringSafeArea(.all)
                    
                    if let word = currentWord {
                        Text(word.word)
                            .font(.system(size: fontSize))
                            .minimumScaleFactor(0.1)
                            .lineLimit(1)
                            .padding()
                            .onAppear {
                                adjustFontSize(for: geometry.size)
                            }
                    }
                    
                    InfoButton(showingInfo: $showingInfo)
                }
                .onTapGesture {
                    withAnimation {
                        if let nextWord = WordService.shared.getNextWord() {
                            currentWord = nextWord
                            adjustFontSize(for: geometry.size)
                        } else {
                            showingCompletion = true
                        }
                    }
                }
                .sheet(isPresented: $showingInfo) {
                    InfoView()
                }
            }
        }
    }
    
    private func adjustFontSize(for size: CGSize) {
        let wordLength = CGFloat(currentWord?.word.count ?? 0)
        let screenWidth = size.width
        fontSize = min(screenWidth / (wordLength * 0.6), size.height / 2)
    }
} 