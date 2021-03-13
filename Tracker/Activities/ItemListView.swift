//
//  ItemListView.swift
//  Tracker
//
//  Created by Chris Bata on 12/21/20.
//

import SwiftUI

struct ItemListView: View {
    let title: LocalizedStringKey
    let items: FetchedResults<Item>.SubSequence

    var body: some View {
        if items.isEmpty {
            EmptyView()
        } else {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.top)

//            ForEach(items) { item in
//                navigationLink(for: item)
//            }
            ForEach(items, content: navigationLink)
        }
    }

    func navigationLink(for item: Item) -> some View {
        NavigationLink(destination: EditItemView(item: item)) {
            HStack(spacing: 20) {
                Circle()
                    .stroke(Color(item.project?.projectColor ?? "Light Blue"), lineWidth: 3)
                    .frame(width: 44, height: 44)

                VStack(alignment: .leading) {
                    Text(item.itemTitle)
                        .font(.title2)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    if item.itemDetail.isEmpty == false {
                        Text(item.itemDetail)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding()
            .background(Color.secondarySystemGroupedBackground)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 5)
        }
    }
}

// struct ItemListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemListView()
//    }
// }
