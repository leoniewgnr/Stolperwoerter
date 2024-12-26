class WordService {
    static let shared = WordService()
    
    private let words = [
        "Urinstinkt",
        "Altbaucharme",
        "Hoffensterchen",
        "Rohrohrzucker",
        "Baumentaster",
        "Gehwegschäden",
        "Staubecken",
        "Musikerleben",
        "Brathering",
        "Nachtruhe",
        "Kreischorverband",
        "Duschlampe",
        "Nudelauflauf",
        "Nachteilzug",
        "Torflaute",
        "Urinsekten",
        "Streikende",
        "Eistempel",
        "Wachstube",
        "Gründung",
        "Blumentopferde",
        "Kirschwein",
        "Barkasse",
        "Erbrecht",
        "Kaufladen",
        "Analphabeten",
        "Autorennen",
        "Fankreise",
        "Altersteilzeit",
        "Gastraum",
        "Tangente",
        "Gelbrand",
        "Erblasser",
        "Zwergelsternchen"
    ]
    
    private var currentIndex = 0
    private var isCompleted = false
    
    func getNextWord() -> StolperWord? {
        if currentIndex >= words.count {
            isCompleted = true
            return nil
        }
        let word = words[currentIndex]
        currentIndex += 1
        return StolperWord(word: word)
    }
    
    func reset() {
        currentIndex = 0
        isCompleted = false
    }
    
    func isGameCompleted() -> Bool {
        return isCompleted
    }
} 
