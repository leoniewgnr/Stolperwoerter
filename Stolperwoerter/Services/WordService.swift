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
    
    func getNextWord() -> StolperWord {
        let word = words[currentIndex]
        currentIndex = (currentIndex + 1) % words.count
        return StolperWord(word: word)
    }
    
    func reset() {
        currentIndex = 0
    }
} 
