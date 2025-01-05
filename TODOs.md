- [X] The player can complete a project and earn its first reward.
- [X] Distinguish between active and inactive projects (row layout, bench on the left, proposed project on the right).
- [X] Fix the card layout issue
- [X] Start the game with only one inactive project, that the player can attempt to drag in its active project bench.
- [X] drag area feedback
- [X] modify the flippable card to handle project progression only in inprogress projects
- [ ] add feedback when project cannot be started (unsufficient prereq etc...)
- [X] Once a project is completed, it should be removed from the list and the reward should be given to the player.

- [ ] Refactor game state notifier to split handleClick into separate methods and use listenSelf

- [ ] Generate a new random projects when the player completes a project.
- [ ] Handle api call + project generation in the client
- [ ] Create api to generate and cache projects

- [X] Change base layout
- [ ] Add autoclicking mechanic -> player can use money to hire freelancer to complete projects for him
- [ ] Add saving game state
- [ ] Add loading game state
- [ ] Add random event mechanic

- [ ] View for the completed projects page

notes
 - available projects have a cooldown timer before a new one appears after the last one is completed
 - the amount of available project slot is upgradable
 - merge reputation level and xp level

 Narrative/gameplay phases:
 - Student
  - 
 - Employee
 - CEO

Ideas
unlockable features on progression
 - alternating between working on project and studying
 - know the exact time to complete a project (initially no clue but a range)
 - know the failure chance of a project (initially no clue but a range)
 - know the reward of a project (initially no clue but a range)
 - able to save/load game state
 - able to generate new projects
 - know the reward of an available project
 - event: coffe boost: x2 project completion speed

 3 different pages
 - personnal page - own projects + hardware + upgrades
 - team page - team projects + hardware + upgrades
 - completed projects page + flashcards

finishing the game loop
 - [ ] define progression system
 - [ ] define levelup reward for each level (flashcards)

 progression

game context:
I am designing an incremental game where you "complete" projects to earn experience and money.
You start as a computer science student and grind your way to become an AI overlord.
The primary resources are experience and money. 
Experience allows you to level up which unlocks a pack of random knowledge flashcards about various comp-sci concepts and a passive bonus.
Flashcards have rarity, the more rare the card the bigger the bonus.
Common topics flashcards unlocks higher bonuses.
The secondary resources (hardware) are:
 - CPU speed -> speed up personal project completion
 - CPU power -> increase better project reward chances-bracket
 - GPU/Wram -> ???
 - mental load -> each project takes a specific amount of mental load during completion, more mental load = more project that can be completed at the same time.

The game is divided into 3 narrative phases, the first one is the student, the projects you complete can only reward experience
Second one is employee, your projects can reward money as well to upgrade your hardware.
Third one is startup-company, you unlock the ability to hire freelancers who will complete one project for you, you can later unlock the ability to hire them permanently.

Projects are generated randomly using LLM to create fun and humorous project name/description to keep the player engaged.

During gameplay random story events can appear, the player can choose a direction to influence the outcome of the event and affect its reputation level. Reputation level affects the probability to hire better freelancer (hiring process has some randomness in it)

Reputation level also unlocks completion strategy that influence the way multiple projects are completed like :
- FIFO - first active projects gets all the clicks
- Catch up - attempt to complete all the active projects at the same time
- Random - random distribution with a small chance of clicking bonus.
- Collaborative - portion of the hired freelances goes to complete the active projects.

Ultimately multiple endings could be considered :
- hardware master (lots of hardware upgrades, allowing for ultra fast project completion)
- startup CEO (lots of freelancer - conversion to startup, allowing a lot of multiple projects to be active at the same time)
- cloud wizard (cloud migration allowing for completion of ultra high project prerequisites to be taken)

4 types of project:
- learning: 
  (-) + completion time
  (+) + XP
- design:
  (-) takes more mental load
  (+) if coupled with implementation gains + xp and + money
- implementation:
  (-) has a probability to fail
  (+) if coupled with design gains + xp and + money
- optimization:
  (-) no reward
  (+) permanently reduce probability of implementation failure


feature/levels unlock
1. save/load game
2. 
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
```mermaid
graph LR
  Projects -->|rewards| Experience
  Projects -->|may have| Milestone
  Milestone -->|has a| FailureChance[Failure chance]
  Projects -->|rewards| Money
  Projects -->|eventually triggers| StoryEvent[Story event]
  Projects -->|requires certain amount| CPUPower

  Money -->|upgrades| CPUSpeed[CPU speed]
  Money -->|upgrades| CPUPower[CPU power]
  Money -->|upgrades| GPUWram[GPU/Wram]
  Money -->|upgrades| RAM

  CPUSpeed -->|speeds up completion| Projects
  RAM -->|enables more to be done simultaneously| Projects
  SkillLevel -->|unlocks more rewarding| Projects
  SkillLevel -->|improves outcome| StoryEvent[Story event]

  Experience -->|upgrades| SkillLevel[Skill level]
  SkillLevel -->|unlocks boosters| FlashCard

  Money -->|purchases| Freelancer
  Freelancer -->|can be converted to| Employee
  Freelancer -->|complete but only once| Projects
  Employee -->|consumes per project completion| Projects
  Employee -->|automatically take on new| Projects
  Employee -->|has| EmployeeLevel[Employee level]
  EmployeeLevel -->|reduces completion time| Projects
  EmployeeLevel -->|reduces| FailureChance[Failure chance]

  StoryEvent -->|rewards| ReputationAmount[Reputation amount]
  ReputationAmount -->|upgrades| ReputationLevel[Reputation level]
  ReputationLevel -->|unlocks| CompletionStrategy[Completion strategy]
  ReputationLevel -->|influences the next| StoryEvent[Story event]
  ReputationLevel -->|enhances rates of hiring better| Freelancer
  CompletionStrategy -->|changes time distribution| Projects


  FlashCard -->|boosts| CPUSpeed
  FlashCard -->|boosts| CPUPower
  FlashCard -->|boosts| GPUWram
  FlashCard -->|boosts| Experience
  FlashCard -->|boosts| RAM
  FlashCard -->|boosts| ReputationLevel[Reputation level]
  FlashCard -->|boosts| Freelancer
  FlashCard -->|boosts| Employee
```

```mermaid
graph LR
    %% Core Project Loop
    Projects -->|generates| Resources
    Resources -->|splits into| Money
    Resources -->|splits into| Experience
    Resources -->|splits into| ReputationPoints[Reputation Points]

    %% Hardware System
    Money -->|upgrades| HardwareHub[Hardware Hub]
    HardwareHub -->|contains| CPUSpeed
    HardwareHub -->|contains| CPUPower
    HardwareHub -->|contains| GPUWram
    HardwareHub -->|contains| RAM
    HardwareHub -->|improves| Projects

    %% Skill System
    Experience -->|increases| SkillLevel
    SkillLevel -->|unlocks| AdvancedProjects[Advanced Projects]
    SkillLevel -->|unlocks| FlashCards
    FlashCards -->|boosts| HardwareHub
    FlashCards -->|boosts| WorkforceHub

    %% Reputation System
    ReputationPoints -->|builds| ReputationLevel
    ReputationLevel -->|triggers| StoryEvents
    StoryEvents -->|unlocks| CompletionStrategies
    ReputationLevel -->|improves| ProjectQuality

    %% Workforce System
    Money -->|hires| WorkforceHub[Workforce Hub]
    WorkforceHub -->|manages| Freelancers
    WorkforceHub -->|manages| Employees
    Freelancers -->|completes| Projects
    Employees -->|automates| Projects

    %% New Suggested Systems
    Projects -->|affected by| MarketConditions
    MarketConditions -->|influences| ProjectRewards
    MarketConditions -->|influences| ProjectAvailability

    WorkforceHub -->|generates| TeamSynergy
    TeamSynergy -->|improves| ProjectEfficiency

    SkillLevel -->|unlocks| Research
    Research -->|unlocks| NewTechnologies
    NewTechnologies -->|enhances| Projects

    %% Project Types
    Projects -->|categorized as| ProjectTypes
    ProjectTypes -->|requires specific| HardwareHub
    ProjectTypes -->|requires specific| WorkforceSkills
```

```mermaid
graph LR
    %% Core Resource Generation
    Projects -->|generates| Resources
    Resources -->|splits into| Money
    Resources -->|splits into| Experience
    Resources -->|splits into| ReputationPoints

    %% Progression Hub that enables specialization
    Experience -->|increases| SkillLevel
    ReputationPoints -->|increases| ReputationLevel
    Money -->|enables| Investments
    
    SkillLevel & ReputationLevel & Investments -->|unlocks| Specialization[Specialization Choice]

    %% Hardware Master Path
    Specialization -->|hardware focus| HardwarePath[Hardware Master]
    HardwarePath -->|enhances| HardwareHub
    HardwareHub -->|unlocks| SuperComputer
    HardwareHub -->|unlocks| QuantumComputing
    SuperComputer & QuantumComputing -->|enables| TimeManipulation
    TimeManipulation -->|leads to| HardwareVictory[Technological Singularity]

    %% Startup CEO Path
    Specialization -->|workforce focus| StartupPath[Startup CEO]
    StartupPath -->|enhances| WorkforceHub
    WorkforceHub -->|enables| OfficeExpansion
    WorkforceHub -->|develops| TeamSynergy
    OfficeExpansion & TeamSynergy -->|builds| CompanyCulture
    CompanyCulture -->|leads to| StartupVictory[Tech Giant Acquisition]

    %% Cloud Wizard Path
    Specialization -->|cloud focus| CloudPath[Cloud Wizard]
    CloudPath -->|unlocks| CloudInfra[Cloud Infrastructure]
    CloudInfra -->|enables| ServerScaling
    CloudInfra -->|enables| GlobalCDN
    ServerScaling & GlobalCDN -->|achieves| CloudDominance
    CloudDominance -->|leads to| CloudVictory[Global Cloud Dominance]

    %% Core Systems Integration
    HardwareHub -->|improves| Projects
    WorkforceHub -->|completes| Projects
    CloudInfra -->|processes| Projects

    %% Shared Systems
    FlashCards -->|boosts all paths| HardwareHub & WorkforceHub & CloudInfra
    ReputationLevel -->|influences all| ProjectQuality
    Money -->|maintains| CloudInfra
    Money -->|upgrades| HardwareHub
    Money -->|pays| WorkforceHub

    %% Path-Specific Projects
    Projects -->|hardware-specific| HardwarePath
    Projects -->|team-specific| StartupPath
    Projects -->|cloud-specific| CloudPath
```