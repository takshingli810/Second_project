#Project 2 Feedback

Congratulations on having completed project 2! I have provided you feedback in the form of a pullrequest, that you should not merge into your project. More detailed note of mine can be found throughout your project—run the command `rake notes` to see them.

## Rubric

### Criteria

* **Project WorkFlow**: Was the project planed thoroughly? Was it committed to frequently? Does it have a solid readme?
* **Technical Requirements**: Does the project meet the technical requirements in the project specs?
* **Creativity**: Is there a personal/creative touch in the project?
* **Code Quality**: Is the code well-named, DRY, commented, etc?
* **Problem Solving**: Was there an ability to break down a complex problem into smaller pieces and resourcefully solve each systematically?

### Possible Results

* Needs Improvement
* Complete
* Exceeded Expectations

## Evaluation

Areas for improvement:

* I recommend using `pg` not `sqlite3`, it will make deploying to Heroku easier.
* Your database names were really generic, so I changed them to the name of your app appended with and `_` and the environment type (`dev,` `test`, `production`). That's the typical pattern.
* I'd give a defined width to your photos so that they fit nicely together in a grid.
* Delete your extra readme file.
* Solid trello board, but each card should only be a user-story. Doesn't make sense to have a card "styling", but rather "user can see a styled application" is more appropriate.
* "User should be able to CRUD their own profile" is a very large user-story (epic). Definitely break something like that into parts, like "User can create a profile", "User can edit their profile", etc.
* Do you have wireframes? Ideally include them in your readme.

Keep doing:

* Instagram's OAuth is pretty challenging, so nice job pivoting to instead use uploadcare to achieve the same goal.
* Bravo tackling a feature like memberships.
* Good job using all the CRUD actions.
* Great work using the checklist feature for your user-stories. Looks well planned!
* Solid readme!

### Result: Complete
