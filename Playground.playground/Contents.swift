import UIKit

var str = "Hello, playground"

import Foundation

let formatter = RelativeDateTimeFormatter()
formatter.localizedString(from: DateComponents(day: -1)) // "1 day ago"
formatter.localizedString(from: DateComponents(day: 1)) // "1 day ago"

//formatter.dateTimeStyle = .

formatter.localizedString(from: DateComponents(minute: 1)) // "1 day ago"


let cformatter = DateComponentsFormatter()
cformatter.unitsStyle = .short

let components = DateComponents(hour: 0, minute: 3)

let string = cformatter.string(from: components)
