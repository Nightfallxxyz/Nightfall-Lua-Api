\#  Nightfall Lua API Documentation



Welcome to the official scripting documentation for the \*\*Nightfall\*\* internal cheat. 



\## Script Location

All scripts must be placed in: `C:\\Nightfall\\scripts\\`  

Files must end in the `.lua` extension to be detected by the manager.



---



\## Global Namespace: `cheat`



\### 1. General Engine Functions

| Function | Parameters | Description |

| :--- | :--- | :--- |

| `cheat.print` | `(string text)` | Prints a message to the game console (`~`) with a `\[Nightfall]` prefix. |

| `cheat.set\_color`| `(int id, r, g, b, a)` | Overrides ImGui style colors. `id` matches `ImGuiCol\_` indices (0-54). |



\### 2. UI \& Windowing

| Function | Parameters | Description |

| :--- | :--- | :--- |

| `cheat.begin` | `(string name)` | Starts a new ImGui window. Required to draw UI. |

| `cheat.end` | `none` | Closes the current window context. Must match `begin`. |

| `cheat.text` | `(string text, \[r, g, b, a])` | Renders text. Color parameters are optional (0-255). |

| `cheat.checkbox` | `(string label, string key)` | Creates a checkbox linked to a cheat feature. |

| `cheat.slider\_int`| `(string label, string key, min, max)`| Creates an integer slider linked to a cheat feature. |



---



\## Config Keys (API Bindings)

Use these keys in `cheat.checkbox` or `cheat.slider\_int` to control the cheat directly from your script.



\### Combat (Ragebot)

\* `rage\_enabled` (bool)

\* `rage\_silent` (bool)

\* `rage\_autostop` (bool)

\* `rage\_autofire` (bool)

\* `rage\_hitchance` (int) - 0-100

\* `rage\_mindamage` (int)

\* `rage\_hitbox\_0` through `rage\_hitbox\_5` (bool)



\### Anti-Aim

\* `aa\_enabled` (bool)

\* `aa\_at\_target` (bool)

\* `aa\_pitch\_val` (int)

\* `aa\_yaw\_val` (int)

\* `aa\_jitter` (int)



\### Visuals (ESP \& World)

\* `esp\_enabled` (bool)

\* `esp\_box` (bool)

\* `esp\_skeleton` (bool)

\* `esp\_health` (bool)

\* `world\_tp\_enabled` (bool) - Thirdperson

\* `world\_tp\_dist` (int) - 30-150

\* `world\_exposure` (int) - Brightness



\### Misc \& Movement

\* `misc\_bhop` (bool)

\* `misc\_autostrafe` (bool)

\* `misc\_strafe\_smooth` (int) - 0-100



---



\## ⚠️ Callbacks

| Callback | Description |

| :--- | :--- |

| `function on\_draw()` | The main loop. Runs every frame while the menu is active. |

