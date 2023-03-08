import SwiftUI
import LocalStorage

struct Todo: Identifiable {
    let id: UUID
    let title: String
    let icon: String
}

final class TodosViewModel: ObservableObject {
    @Published var todos: [Todo] = [
        .init(id: UUID(), title: "Todo 1", icon: "🎢"),
        .init(id: UUID(), title: "Todo 2", icon: "🍝"),
        .init(id: UUID(), title: "Todo 3", icon: "🏕️")
    ]
}

struct TodosView: View {
    @ObservedObject var viewModel: TodosViewModel
    
    private let storageText: String
    
    init(viewModel: TodosViewModel) {
        self.viewModel = viewModel
        self.storageText = LocalStorage().text
    }
    
    var body: some View {
        List {
            ForEach(self.viewModel.todos) { todo in
                HStack {
                    Text(todo.title)
                    Text(todo.icon)
                }
            }
        }
    }
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView(viewModel: TodosViewModel())
    }
}
