// Here's an example of `@Clamped` in use

@Clamped(range: 0...100) var percent = 0
print(percent) // `0`
percent = 110
print(percent) // `100`
