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

```mermaid
graph LR
  Projects -->|rewards| Experience
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



%% graph LR
%%     Player -->|improves clicking power| Experience
%%     Projects -->|unlocks more rewarding| Experience
%%     Projects -->|collects| Money
    
%%     Experience --> SkillLevel[Skill level]
%%     Experience --> CPUSpeed[CPU speed]
%%     Experience --> CPUPower[CPU power]
    
%%     Money -->|upgrades| GPUWram[GPU/Wram]
%%     Money -->|upgrades| RAM
    
%%     FlashCard --> Name
%%     Name -->|belongs to| Subtheme
%%     Subtheme -->|belongs to| Theme
    
%%     Player -->|collects for passive bonuses| FlashCard
    
%%     StoryEvent -->|rewards| ReputationAmount[Reputation amount]
%%     ReputationAmount -->|upgrades| ReputationLevel[Reputation level]
    
%%     ReputationLevel --> ClickingStrategy[Clicking strategy]
%%     ReputationLevel --> Freelancer
%%     Freelancer -->|can be converted to| Employee
    
%%     Autoclicker -->|changes clicks distribution| Projects
%%     Autoclicker -->|unlocks and improves power as well as passive progress| Projects
    
%%     RAM -->|enables multiples to be completed simultaneously| StoryEvent
%%     RAM -->|augment chances of better outcome/rewards| StoryEvent
    
%%     StoryEvent -->|influence the next| Projects
```