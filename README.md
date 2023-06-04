# Number Trivia App

Get interesting facts about numbers with this Number Trivia App

[1]: Taken from [!Reso Coder](https://www.youtube.com/playlist?list=PLB6lc7nQ1n4iYGE_khpXRdJkJEp9WOech) YouTube channel. 

## Flutter Clean Architecture
Reso Coder's Flutter Clean Architecture Proposal. It shows the dependency flow (data and call flow).
Every "feature" of the app will be divided into 3 layers; Presentation, Domain, and Data.

![Clean Architecture](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1 "Flutter Clean Architecture diagram")
*Flutter Clean Architecture by Matt Rešetár*

### Presentation
It composed of widgets to display something on the screen. The widgets then dispatch events
to the presentation logic holders (state management) and listen for states changes.

The presentation layer handles basic input conversion and validation and delegates all its work to the use cases.

### Domain
Domain is most the inner layer which should be totally independent of every other layer. It
shouldn't be susceptible to any change. It will contain only the core business logic (Use Cases) and
business objects (Entities).

The Domain layer also defining the contracts that the Data Repository mus fulfill. To guarantee the
dependency rule and maintain the domain layer completely independent when it gets data from a Repository
we should follow the Dependency inversion principle. Dependency inversion states that the boundaries
between layers should be handled with interfaces (abstract classes).

### Data
The data layer consists of a Repository implementation (the contract comes from the domain layer)
and data sources. Data sources can be Remote, usually for getting data from API; or Local, for caching data.

Additionally, Data sources don't return Entities but rather Models. Model classes which extend
Entities and add some specific functionality or additional fields.
