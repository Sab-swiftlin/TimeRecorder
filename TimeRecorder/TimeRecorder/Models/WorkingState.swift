import Foundation

enum WorkingState {
    case beforeWork, amWork, lunchBreak, pmWork, afterWork
    
    mutating func next() {
        switch self {
        case .beforeWork:
            self = .amWork
        case .amWork:
            self = .lunchBreak
        case .lunchBreak:
            self = .pmWork
        case .pmWork:
            self = .afterWork
        case .afterWork:
            self = .beforeWork
        }
    }
}
