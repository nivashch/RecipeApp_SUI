//
//  CategoryView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject private var itemsVM: ItemsViewModel
    
    var category: Category
    var items: [Item] {
        return itemsVM.items.filter( { $0.category == category.rawValue } )
    }
    
    var body: some View {
        ScrollView{
            ItemList(items: items)
            .navigationTitle(category.rawValue + "s")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.categ1)
            .environmentObject(ItemsViewModel())
    }
}
