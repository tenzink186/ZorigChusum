import SwiftUI

struct CraftDetailView: View {
    let craft: Craft
    let isVisited: Bool
    let markVisited: () -> Void

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Craft Banner Image
                Image(craft.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
                    .padding(.horizontal)

                // Title & English Name
                VStack(spacing: 4) {
                    Text(craft.name)
                        .font(.largeTitle)
                        .bold()

                    Text(craft.englishName)
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }

                Divider()
                    .padding(.horizontal)

                // About Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("About the Craft")
                        .font(.title3)
                        .bold()

                    Text(craft.description)
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .lineSpacing(3)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

                // Mark as Visited Button
                Button(action: markVisited) {
                    HStack(spacing: 8) {
                        Image(systemName: isVisited ? "checkmark.circle.fill" : "circle")
                            .font(.title3)

                        Text(isVisited ? "Visited" : "Mark as Visited")
                            .font(.headline)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(isVisited ? Color.green : Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
