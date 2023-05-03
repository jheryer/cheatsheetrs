# Swift
Source: https://koenig-media.raywenderlich.com/uploads/2020/12/RW-Swift-5.1-Cheatsheet-1.0.pdf

## Declaring Constants and Variables
|
| Keyword | Description |
| --- | --- |
| `let` | Immutable - Cannot be reassigned |
| `var` | Mutable - Can be reassigned |
|
## Type Annotations
|
| Example | Type |
| --- | --- |
| `“Hello”` | String |
| `8` | Int |
| `true` | Bool |
| `8.99` | Double |
|
## Arithmetic Operators
|
| Operator | Description |
| --- | --- |
| `+` | Add |
| `-` | Subtraction | 
| `*` | Multiplication |
| `/` | Division |
| `%` | Remainder |
| `+=` | Adds and assigns sum |
| `-=` | Subtract and assign the difference |
| `*=` | Multiplication and assignment |
| `/=` | Divide and assign quotient |
| `%=` | Divide and assign remainder |
|
## Tuples
|
| Example | Description |
| --- | --- |
| `let httpError = (503, "Server Error")` | Group multiple values into a single compound value |
|
## Optionals
Variable can hold a String of nil
|
| Example | Description |
| --- | --- |
| `var catchphrase: String?` | Automatically set to nil |
| `let count1: Int = catchphrase!.count` | Forced unwrapping - operator (!) count1 contains catchphrase's count if catchphrase isn't nil; crashes otherwise |
| `if let count = catchphrase?.count { print(count) }` | Optional binding - If the optional Int returned by catchphrase?.count contains a value, set a new constant called count to the value contained in the optional |
| `let count2: Int = catchphrase?.count ?? 0` | Coalescing operator (??) - count2 contains catchphrase's count if catchphrase isn't nil; 0 otherwise |
| `let count3: Int? = catchphrase?.count` | Chaining operator (?) - count3 contains catchphrase's count if catchphrase isn't nil; nil otherwise |
| `let forcedCatchphrase: String! = "Hey, what's up, everybody?"` | Implicity unwrapped optionals |
| `let implicitCatchphrase = forcedCatchphrase` | No need for an exclamation mark |
|
## Collection Types
|
| Example | Description |
| --- | --- |
| `["Apple", "Orange", "Banana"]` | Array -  used to store ordered lists of values of the same type |
| `["firstName": "Betty", "lastName": "White"]` | Dictionary - used to store unordered lists of values of the same type | 
| `["Chocolate", "Strawberry", "Vanilla"]` | Sets - used to store distinct values of same types but they don't have definite ordering as arrays |
|
## Closures
|
| Example | Description |
| --- | --- |
| `let adder: (Int, Int) -> Int = { (x,y) in x + y }` | Self-contained blocks of functionality |
| `let square: (Int) -> Int = { $0 * $0 }` | Closures with shorthand argument name |
| `let addWithClosure = doMath(operation: adder, a: 2, b:3)` | Passing a closure to a function |
|
## Comments
|
| Example | Description |
| --- | --- |
| `//This is a comment` | Single line comment | 
| `/*` | Multiline comment opening |
| `*/` | Multiline comment closing |
| `%` | Remainder |
| `// MARK: -view settings` | Special comment syntax (MARK) |
| `// TODO: update logic to accommodate data changes` | Special comment syntax (TODO) |
| `// FIXME: Fix buggy behavior when making changes to existing entries` | Special Comment Syntax (FIXME) |
|









