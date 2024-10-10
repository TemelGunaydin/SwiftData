//
//  BookModel.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import Foundation
import SwiftData
import UIKit

@Model
class BookModel {
    var bookId: UUID
    var title: String
    var price: Decimal
    var available: Bool
    var pages: Int
    var url: URL
    var lastUpdated = Date() // It has a default value so we dont need to include it in init
    var cover: Data? //for storing images it should be converted to Data type first
    

    init(bookId: UUID, title: String, price: Decimal, available: Bool, pages: Int, url: URL, lastUpdated: Date = Date(), cover: Data? = nil) {
        self.bookId = bookId
        self.title = title
        self.price = price
        self.available = available
        self.pages = pages
        self.url = url
        self.lastUpdated = lastUpdated
        self.cover = cover
    }
}

extension BookModel {
    var viewAvailability : String {
        available ? "checkmark" : "xmark"
    }
    
    var viewCover: UIImage {
        if let data = cover, let image = UIImage(data:data) {
            return image
        } else {
            return UIImage(systemName: "note.text")!
        }
    }
}

extension BookModel {
    @MainActor // to remove the errors from mainContext we should add this macro
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: BookModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        //add your mock data
        let book = BookModel(
            bookId: UUID(),
            title: "SwiftUI Essentials",
            price: 34.00,
            available: true,
            pages: 179,
            url: URL(string: "https://www.bigmountainstudio.com/essentials")!,
            cover: UIImage(named: "swiftui")!.jpegData(compressionQuality: 0.25)!)
        
        container.mainContext.insert(book)
        
        return container
    }
}
