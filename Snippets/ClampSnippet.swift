// Here are examples of using `Clamping.clamp(_:)`

//snippet.hide
import Plume

//snippet.show

//snippet.intRange
var range = 0...100

let inRange = range.clamp(50) //  50
let aboveRange = range.clamp(110) // 100
let belowRange = range.clamp(-25) // 0

//snippet.floatRange
let openRange = (0.0..<10.0)
let clamped = openRange.clamp(100) // 9.99…
