## Player System

- [x] Detect player input for movement using WASD keys
- [x] Detect interaction input using the E key
- [x] Track player-held item (or none) at any time
- [x] Switch player animations between idle and movement states
- [x] Prevent item pickup when already holding one
- [x] Allow item drop in bins and punish if dropped in wrong bin

---

## Map Elements

### Bins
- [x] Assign each bin a type (e.g., plastic, biodegradable, metal, glass, electronic)
- [ ] Enable interaction to drop an item
- [x] Check whether dropped item matches bin type
- [x] Award or deduct heart based on correctness

### Items
- [x] Item graphics
- [x] Assign a type to each item
- [x] Allow item to be picked up once
- [x] Despawn or hide item after pickup

### Conveyor Belt
- [ ] Move items consistently across a path or direction
- [ ] Stop item movement once picked up by the player
- [ ] Punish the player if the item is moved to the end

### Dumpster Drop
- [x] Spawn random items
- [x] Randomize item type
- [x] Limit number of items to spawn

### Obstacles
- [x] Block player path or item access
- [ ] Optionally use triggers (e.g., lever) to open or close paths or change conveyor belt direction

---

## HUD In-Game

- [ ] Display countdown timer during gameplay
- [x] Display remaining lives or allowed mistakes
- [x] Provide pause, restart, and quit options
- [ ] Display earned stars at end of level
- [x] Show "Next Level" option when criteria are met

---

## HUD Out-of-Game

- [x] Choosing level
- [x] Main menu

---

## Stretch Features

- [x] Create multiple unique map layouts
- [x] Swap visual themes depending on the setting
- [x] Vary item types or spawn behavior per map
- [ ] Wiki for every item included in the game
