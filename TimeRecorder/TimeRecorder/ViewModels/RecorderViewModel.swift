import Foundation

final class RecorderViewModel: ObservableObject {
    @Published var state: WorkingState = .beforeWork
    
    func recordTapped() {
        state.next()
    }
}
