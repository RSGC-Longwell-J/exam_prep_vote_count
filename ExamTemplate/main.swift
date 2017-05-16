import Foundation

//ORGANIZING YOUR SOLUTION
//
//     A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
//
// The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?

var numberOfVoters : Int = 0

var LetterVotes : String = ""
var output : String = ""

var NumberOfAVotes : Int = 0
var NumberOfBVote : Int = 0
var VoteCount : Int = 0

//Input
while numberOfVoters == 0 {
    
    // Ask the user for input
    print("How many voters? ", terminator: "")
    var input : String?
    input = readLine()
    if let notNilInput = input {
        if let inputAsInt = Int(notNilInput) {
            if inputAsInt >= 1 || inputAsInt <= 15 {
                numberOfVoters = inputAsInt
            }
        }
    }
}
//PROCESS
//
//     Here is where you implement the logic that solves the problem at hand.
//
// Make use of your test plan and algorithm to ensure your code is complete.
while LetterVotes == "" {
    var votesInput : String?
    votesInput = readLine()
    if let notNilInput = votesInput {
        LetterVotes = notNilInput
    }
}


//Logic to determin what the correct ouput will be depending on the input
for letter in LetterVotes.characters {
    if letter == "A" {
        NumberOfAVotes += 1
    } else if letter == "B" {
        NumberOfBVote += 1
    }
    VoteCount += 1
}
if VoteCount != numberOfVoters {
    
    output = "ERROR"
    
} else if NumberOfAVotes == NumberOfBVote {
    
    output = "Tie"
    
} else if NumberOfAVotes > NumberOfBVote {
    
    output = "A"
    
} else if NumberOfBVote > NumberOfAVotes {
    
    output = "B"
    
}

print(output)
