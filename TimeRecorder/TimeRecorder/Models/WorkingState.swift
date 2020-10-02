import SwiftUI

enum WorkingState {
    case beforeWork, amWork, lunchBreak, pmWork, afterWork
    
    var actionButtonTitle: String {
        switch self {
        case .beforeWork:
            return "出勤"
        case .amWork:
            return "休入"
        case .lunchBreak:
            return "休出"
        case .pmWork:
            return "退勤"
        case .afterWork:
            return ""
        }
    }
    
    var actionButtonColor: Color {
        switch self {
        case .beforeWork:
            return .green
        case .amWork:
            return .orange
        case .lunchBreak:
            return .blue
        case .pmWork:
            return .pink
        case .afterWork:
            return .clear
        }
    }
    
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
