game context:
I am designing an incremental game where you "complete" projects to earn experience and money.
You start as an developer intern and grind your way to become an AI overlord.
The primary resources are experience and money. 
Experience allows you to level up which unlocks a pack of random knowledge flashcards about various comp-sci concepts and a passive bonus.
Flashcards have rarity, the rarer the card the bigger the bonus.
Common topics flashcards unlocks higher bonuses.
The secondary resources (hardware) are:
 - Tech skills -> Determines the complexity of projects you can take on, Affects the probability of getting better rewards, Could influence the ability to mentor/train hired freelancers later
 - Development Tools -> Affects project completion speed, Could unlock automation features later in the game, Influences the efficiency of your freelancer team
 - Hardware -> Determines the scale of projects you can handle, Could enable passive resource generation (SaaS type project-reward taht would enable passive resource gain)
 - focus point -> each project takes a specific amount of focus point during completion, more focus point = more project that can be completed at the same time. Could add a quality multiplier to project rewards when you have excess focus

The game is divided into 3 narrative phases, the first one is the intern-freelancer.
Second one is employee, your projects can reward money as well to upgrade your hardware.
Third one is startup-company, you unlock the ability to hire freelancers who will complete one project for you, you can later unlock the ability to hire them permanently.

Projects are generated randomly using LLM to create fun and humorous project name/description to keep the player engaged.

Ultimately multiple endings could be considered :
- hardware master (lots of hardware upgrades, allowing for ultra fast project completion)
- startup CEO (lots of freelancer - conversion to startup, allowing a lot of multiple projects to be active at the same time)
- cloud wizard (cloud migration allowing for completion of ultra high project prerequisites to be taken)

4 types of project:
- learning -> green: 
  (-) + completion time
  (+) + XP
- design -> blue:
  (-) takes more focus point
  (+) if coupled with implementation gains + xp and + money
- implementation -> purple:
  (-) has a probability to fail
  (+) if coupled with design gains + xp and + money
- optimization -> orange:
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