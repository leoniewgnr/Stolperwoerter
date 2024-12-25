import SwiftUI

struct InfoButton: View {
    @Binding var showingInfo: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    showingInfo.toggle()
                }) {
                    Image(systemName: "questionmark.circle")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                }
            }
            Spacer()
        }
    }
} 