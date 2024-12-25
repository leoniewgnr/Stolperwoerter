import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Stolperwörter")
                    .font(.largeTitle)
                    .bold()
                
                Text("Das lustige Vorlesespiel für alle!")
                    .font(.title2)
                
                Text("Du kennst das: Manchmal liest man ein Wort und spricht es trotzdem völlig falsch aus. Aus \"Urinstinkt\" wird plötzlich... naja, du weißt schon! 😄")
                
                Text("So wird gespielt:")
                    .font(.title3)
                    .bold()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("• Halte dein Handy hoch, sodass die anderen das Wort sehen können")
                    Text("• Die Mitspieler versuchen, das angezeigte Wort richtig vorzulesen")
                    Text("• Tippe auf den Bildschirm für das nächste Wort")
                    Text("• Lacht gemeinsam über die lustigen Versprecher!")
                }
            }
            .padding()
        }
    }
} 