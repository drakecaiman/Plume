// Here's an example of `@Clamped` in use

//snippet.hide
import Plume

//snippet.show
struct Review
{
    var name : String
    var content : String
    @Clamped(range: 0...5) var rating = 0
}

let myReview = Review(name: "Could have been better!",
                      content: "…",
                      rating: 3)
print(myReview.rating) // `3`
myReview.rating = -5
print(myReview.rating) // `0`
