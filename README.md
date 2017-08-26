# Knight's Travails Project

The goal of this project is to implement a function #knight_moves that shows the simplest possible way to get from one square to another using a Chess Knight.
The function will output all squares the knight will move to on its way. This is a variation on the [shortest path problem](https://en.wikipedia.org/wiki/Shortest_path_problem).

This is a project from [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms).

![Knight Possible Moves](/moves.gif)
![Knight Movement](/travails.gif)

![Screenshot](/knights_travails.png)

## Installation

Open your Terminal/Command Line. Navigate to the directory where your version will live. Type in the following:

```
$ git clone https://github.com/JonathanYiv/knights_travails.git
$ cd knights_travails
$ ruby knights_travails.rb
```

## Pre-Project Thoughts

1. This project led me into my deepest rabbit hole yet: Algorithms and Asymptotic Notation. In order to develop a better understanding, I have:

	1. Gone through [Khan Academy's Intro to JS: Drawing and Animation](https://www.khanacademy.org/computing/computer-programming/programming) which is a prerequisite to:
	2. [Khan Academy's Algorithms Course](https://www.khanacademy.org/computing/computer-science/algorithms), and then to gain better understanding of Time Complexity:
	3. Watched [mycodeschool's excellent YouTube series on Time Complexity Analysis](https://www.youtube.com/playlist?list=PL2_aWCzGMAwI9HK8YPVBjElbLbI3ufctn) and then:
	4. Read [this excellent stackoverflow answer on Big O notation](https://stackoverflow.com/questions/487258/what-is-a-plain-english-explanation-of-big-o-notation).

2. I believe I have developed a better understanding of:

	1. Sorts, Implementation of Sorts, and Sort Efficiency
	2. Rudimentary Javascript
	3. Graphs: Vocabulary, Types, and the 3 Representations
		1. Edge Lists
		2. Adjacency Matrices
		3. Adjacency Lists
	4. Mathematical Proof of Asymptotic Notation (albeit still somewhat to very iffy comprehension...)
	5. Concept of Asymptotic Notation
		1. Big O Notation
		2. Big Θ Notation
		3. Big Ω Notation 

3. My only concern going forward is that I overloaded myself with information before practically applying it to this project. I guess I'll find out...

## Post-Project Thoughts

1. I know that fully implementing Chess is only two projects away, so I put in a little extra effort into fleshing out class Gameboard so it can handle displaying the game appropriately. I'm definitely excited to get to that project in the near future. Odin has me twiddling in RSpec and Git a little bit more and then I'll be there...

2. The #knight_moves method was actually fairly easy to implement. First, I created a matrix of all existing positions. Then I performed a breadth-first search to fill an array 'distance_info' with each point's distance to the goal and their parent position. The breadth-first search continued until it reached the starting point. Then I iterated through the starting Knight's possible moves and selected the move that had the least distance from the goal position. This information was passed on to the display which moved the knight, and then searched for the next move until the full operation was complete.

3. I am fairly proud of myself for completing this one.

4. Eventually, I may touch it up and add options for input. The user would be able to run the script and input a starting point and ending point. The script would then display the step-by-step moves from the starting to ending point. However, I know I will be fully implementing Chess shortly so I am eager to push forwards.

5. Apparently, I implemented [Dijkstra's Algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm).
