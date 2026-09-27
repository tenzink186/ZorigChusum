import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var visitedCrafts: Set<UUID> = []

    private var filteredCrafts: [Craft] {
        if searchText.isEmpty {
            return crafts
        }

        return crafts.filter { craft in
            craft.name.localizedCaseInsensitiveContains(searchText) ||
            craft.englishName.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredCrafts) { craft in
                    NavigationLink {
                        CraftDetailView(
                            craft: craft,
                            isVisited: visitedCrafts.contains(craft.id),
                            markVisited: {
                                visitedCrafts.insert(craft.id)
                            }
                        )
                    } label: {
                        HStack(spacing: 15) {
                            Image(craft.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 45, height: 45)
                                .clipShape(RoundedRectangle(cornerRadius: 10))

                            VStack(alignment: .leading, spacing: 4) {
                                Text(craft.name)
                                    .font(.headline)

                                Text(craft.englishName)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }

                            Spacer()

                            if visitedCrafts.contains(craft.id) {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundStyle(.green)
                                    .font(.title3)
                            }
                        }
                        .padding(.vertical, 6)
                    }
                }
            }
            .navigationTitle("Zorig Chusum")
            .searchable(
                text: $searchText,
                prompt: "Search crafts"
            )
        }
    }
}

#Preview {
    ContentView()
}
