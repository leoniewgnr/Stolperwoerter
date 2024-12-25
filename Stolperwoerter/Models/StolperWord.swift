//
//  StolperWord.swift
//  Stolperwoerter
//
//  Created by Leonie Wagner on 25.12.2024.
//

import Foundation

struct StolperWord: Identifiable {
    let id: UUID
    let word: String
    
    init(word: String) {
        self.id = UUID()
        self.word = word
    }
} 