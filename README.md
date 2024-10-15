# LXR-Input

LXR-Input is an advanced NUI input system designed for the LXRCore framework. It provides a flexible way to create interactive forms that accept various input types such as text, numbers, radio buttons, checkboxes, and dropdown menus, all integrated within your RedM or FiveM server.

This resource is based on the **[NH Keyboard](https://forum.cfx.re/t/no-longer-supported-standalone-nerohiro-s-keyboard-dynamic-nui-keyboard-input/2506326)** created by **[NeroHiro](https://github.com/nerohiro)** but has been modified and optimized for LXRCore.

![image](https://user-images.githubusercontent.com/57848836/158486183-68c40a47-0bf3-44c4-b738-b80520de10da.png)

## Features

- **Highly Customizable**: Create forms with various input types.
- **Multiple Input Types**: Supports text, number, radio, checkbox, and dropdown (select) input fields.
- **Easy Integration**: Works seamlessly within your LXRCore-based scripts.
- **Responsive UI**: Input forms are built using the NUI system, making them sleek and user-friendly.

## Example Usage

Here’s an example of how to create a basic form that captures input values and prints them in the console:

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

### Key Input Types:
- **Text**: Free-text input.
- **Number**: Only accepts numeric values.
- **Radio**: Choose between exclusive options (like "Bill" or "Cash").
- **Checkbox**: Multiple selection options (like taxes to include).
- **Select**: A dropdown menu with multiple options to choose from.

## Integration

To integrate `lxr-input` into your server:
1. Ensure the `lxr-input` resource is started in your `server.cfg`.
2. Use the `ShowInput` function to create and display input forms in your scripts.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
