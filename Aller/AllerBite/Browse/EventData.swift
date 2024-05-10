import SwiftUI

// The EventData class manages the collection of events in the app.
class EventData: ObservableObject {
    @Published var events: [Event] = [
        // Example events with specific symbols, colors, titles, tasks, and dates.
        // These events represent various activities or tasks for different purposes.
        // Each event has a symbol, color, title, list of tasks, and a date associated with it.
        Event(symbol: "facemask.fill",
              color: .indigo,
              title: "Doctor's Appointment",
              tasks: [EventTask(text: "Bring medical ID"),
                      EventTask(text: "Record heart rate data")],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 30)),
        
        // More events with different symbols, colors, titles, tasks, and dates...
        
    ]

    // Method to delete an event from the events collection.
    func delete(_ event: Event) {
        events.removeAll { $0.id == event.id }
    }
    
    // Method to add a new event to the events collection.
    func add(_ event: Event) {
        events.append(event)
    }
    
    // Method to check if an event exists in the events collection.
    func exists(_ event: Event) -> Bool {
        events.contains(event)
    }
    
    // Method to retrieve sorted events based on a specified period.
    func sortedEvents(period: Period) -> Binding<[Event]> {
        Binding<[Event]>(
            get: {
                // Filter and sort events based on the specified period.
                self.events
                    .filter {
                        switch period {
                        case .nextSevenDays:
                            return $0.isWithinSevenDays
                        case .nextThirtyDays:
                            return $0.isWithinSevenToThirtyDays
                        case .future:
                            return $0.isDistant
                        case .past:
                            return $0.isPast
                        }
                    }
                    .sorted { $0.date < $1.date }
            },
            set: { events in
                // Update events collection when changes are made to sorted events.
                for event in events {
                    if let index = self.events.firstIndex(where: { $0.id == event.id }) {
                        self.events[index] = event
                    }
                }
            }
        )
    }
}

// Enum defining different periods for sorting events.
enum Period: String, CaseIterable, Identifiable {
    // Periods include next 7 days, next 30 days, future, and past.
    case nextSevenDays = "Next 7 days"
    case nextThirtyDays = "Next 30 days"
    case future = "Future"
    case past = "Past"
    
    var id: String { self.rawValue }  // ID for each period
    var name: String { self.rawValue }  // Name for each period
}

// Extensions to Date for creating dates from specific components and rounded hours calculation.
extension Date {
    // Method to create a Date instance from specific month, day, and year.
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar(identifier: .gregorian)
        if let date = calendar.date(from: dateComponents) {
            return date
        } else {
            return Date()
        }
    }

    // Method to calculate a rounded date based on a specified number of hours from now.
    static func roundedHoursFromNow(_ hours: Double) -> Date {
        let exactDate = Date(timeIntervalSinceNow: hours)
        guard let hourRange = Calendar.current.dateInterval(of: .hour, for: exactDate) else {
            return exactDate
        }
        return hourRange.end
    }
}

