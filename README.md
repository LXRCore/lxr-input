# 🐺 LXR-Input — Advanced NUI Input System

```
██╗     ██╗  ██╗██████╗        ██╗███╗   ██╗██████╗ ██╗   ██╗████████╗
██║     ╚██╗██╔╝██╔══██╗      ██║████╗  ██║██╔══██╗██║   ██║╚══██╔══╝
██║      ╚███╔╝ ██████╔╝█████╗██║██╔██╗ ██║██████╔╝██║   ██║   ██║   
██║      ██╔██╗ ██╔══██╗╚════╝██║██║╚██╗██║██╔═══╝ ██║   ██║   ██║   
███████╗██╔╝ ██╗██║  ██║      ██║██║ ╚████║██║     ╚██████╔╝   ██║   
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝    ╚═╝   
```

> 🐺 **The Land of Wolves** — Advanced NUI Input System for RedM

═══════════════════════════════════════════════════════════════════════════════

**Server:**    The Land of Wolves 🐺  
**Developer:** iBoss21 / The Lux Empire  
**Website:**   https://www.wolves.land  
**Discord:**   https://discord.gg/CrKcWdfd3A  
**Store:**     https://theluxempire.tebex.io  

═══════════════════════════════════════════════════════════════════════════════

LXR-Input is an advanced NUI input system designed for the **LXR-Core** framework (with RSG-Core, VORP Core, and Standalone support). It provides a flexible way to create interactive forms that accept various input types such as text, numbers, radio buttons, checkboxes, and dropdown menus, all integrated within your RedM server.

This resource is based on the **[NH Keyboard](https://forum.cfx.re/t/no-longer-supported-standalone-nerohiro-s-keyboard-dynamic-nui-keyboard-input/2506326)** created by **[NeroHiro](https://github.com/nerohiro)** but has been rebranded and optimized for LXR-Core / wolves.land.

![image](https://user-images.githubusercontent.com/57848836/158486183-68c40a47-0bf3-44c4-b738-b80520de10da.png)

## Framework Support

| Framework   | Status       |
|-------------|--------------|
| LXR-Core    | ✅ Primary    |
| RSG-Core    | ✅ Compatible |
| VORP Core   | ✅ Compatible |
| Standalone  | ✅ Fallback   |

## Features

- **Highly Customizable**: Create forms with various input types.
- **Multiple Input Types**: Supports text, number, password, radio, checkbox, and dropdown (select) input fields.
- **Easy Integration**: Works seamlessly within your LXR-Core-based scripts.
- **Responsive UI**: Input forms are built using the NUI system, making them sleek and user-friendly.
- **Resource Name Protection**: Built-in runtime guard to ensure the resource runs under the correct name.

## Example Usage

Here's an example of how to create a basic form that captures input values:

```lua
RegisterCommand('testinput', function()
    local dialog = exports['lxr-input']:ShowInput({
        header = "Test Input Form",
        submitText = "Submit",
        inputs = {
            {
                text = "Citizen ID (#)",  -- Placeholder text for the input
                name = "citizenid",       -- Unique input identifier
                type = "text",            -- Input type (text, number, etc.)
                isRequired = true         -- Optional; requires input if set to true
            },
            {
                text = "Bill Price ($)",  
                name = "billprice",       
                type = "number",          -- Restricts input to numbers only
                isRequired = false        
            },
            {
                text = "Bill Type",       
                name = "billtype",        
                type = "radio",           -- Radio buttons for exclusive choices
                options = {
                    { value = "bill", text = "Bill" }, 
                    { value = "cash", text = "Cash" }, 
                    { value = "bank", text = "Bank" }
                }
            },
            {
                text = "Include Tax?",    
                name = "taxincl",         
                type = "checkbox",        -- Checkboxes for multiple selections
                options = {
                    { value = "gst", text = "10% incl." }, 
                    { value = "business", text = "35% incl." }, 
                    { value = "othertax", text = "15% incl." }
                }
            },
            {
                text = "Select Option",   
                name = "someselect",      
                type = "select",          -- Dropdown menu for multiple options
                options = {
                    { value = "none", text = "None" }, 
                    { value = "other", text = "Other" },
                    { value = "other2", text = "Other2" },
                    { value = "other3", text = "Other3" }
                }
            }
        }
    })

    -- Output the results to the console
    if dialog ~= nil then
        for k, v in pairs(dialog) do
            print(k .. " : " .. v)
        end
    end
end, false)
```

### Key Input Types

| Type       | Description                                      |
|------------|--------------------------------------------------|
| `text`     | Free-text input field                            |
| `number`   | Numeric-only input (0-9)                         |
| `password` | Masked text input                                |
| `radio`    | Exclusive single-choice options                  |
| `checkbox` | Multiple-selection options                       |
| `select`   | Dropdown menu with multiple options              |

## Installation

1. Place the `lxr-input` folder in your server's `resources` directory.
2. Ensure the resource is started in your `server.cfg`:
   ```
   ensure lxr-input
   ```
3. Use the `ShowInput` export in your scripts to display input forms.

> ⚠️ The resource folder **must** be named `lxr-input` exactly. A runtime guard will throw an error if the name does not match.

## License

© 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved

See the [LICENSE](LICENSE) file for details.
