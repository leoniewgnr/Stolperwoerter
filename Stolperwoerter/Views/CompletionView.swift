import SwiftUI

struct CompletionView: View {
    let onRestart: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            Text("🎉")
                .font(.system(size: 70))
            
            Text("Geschafft!")
                .font(.largeTitle)
                .bold()
            
            Text("Du hast alle Stolperwörter gemeistert!")
                .font(.title2)
                .multilineTextAlignment(.center)
            
            Button(action: onRestart) {
                Text("Nochmal spielen")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            VStack(spacing: 16) {
                Text("Du kennst noch mehr lustige Stolperwörter?")
                    .font(.callout)
                
                Link(destination: URL(string: "https://www.tiktok.com/@leoniewgnr?_t=8sXp6juXZ70&_r=1")!) {
                    Text("Teile sie mit mir auf TikTok! 📱")
                        .foregroundColor(.blue)
                        .underline()
                }
            }
            .padding(.top)
        }
        .padding()
    }
} 