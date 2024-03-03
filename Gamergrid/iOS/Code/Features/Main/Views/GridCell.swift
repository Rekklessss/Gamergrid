import SwiftUI

struct GridCell: View {
    @State var isSelected: Bool = false
    var item: FollowingItem
    @Binding var selectedItems: [FollowingItem]
    var updateSelectedItems: (FollowingItem) -> Void

    var body: some View {
        VStack {
            Image(item.imgUrl)
                .resizable()
                .scaledToFit()
                .shadow(color: .primary, radius: 5)
                .padding([.horizontal, .top], 7)
                .opacity(isSelected ? 0.5 : 1.0)
                .onChange(of: isSelected) { newValue in // Use onChange
                    if !newValue {
                        if let index = selectedItems.firstIndex(where: { $0.id == item.id }) {
                            selectedItems.remove(at: index)
                        }
                    }
                }

            Text(item.name)
                .lineLimit(1)
                .foregroundColor(isSelected ? .green : .white)
        }
        .onTapGesture {
            isSelected.toggle()
            updateSelectedItems(item)
        }
    }
}

