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

Ideas
unlockable features on progression
 - know the exact time to complete a project (initially no clue but a range)
 - know the failure chance of a project (initially no clue but a range)
 - know the reward of a project (initially no clue but a range)
 - able to save/load game state
 - able to generate new projects
 - know the reward of an available project

 3 different pages
 - personnal page - own projects + hardware + upgrades
 - team page - team projects + hardware + upgrades
 - completed projects page + flashcards

finishing the game loop
 - [ ] define progression system
 - [ ] define levelup reward for each level (flashcards)

 progression


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