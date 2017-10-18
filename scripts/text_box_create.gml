/// text_box_create("Text", speed)
//based off of tutorial found here 
//https://www.youtube.com/watch?v=HdJ0ZUIs-AI

// description: function creates a textbox with associated text and prints each letter at associated speed

// argument0 and argument1 used because gamemaker will not let you use varables defined within scripts in with blocks
// inputText = argument0, displaySpeed = argument1

var textLimit = 140 // hard coded lmao. Make dynamic in future update
argument0 = string_copy(argument0, 1, textLimit) // hacky way to get around gamemaker script with block limitation

textBox = instance_create(0, 0, Obj_TextBox) // object possition doesn't matter, because textbox draws itself
    
with(textBox) {
    text = pad_text_for_display(argument0, maxWidth, textSizeMultiplyer)
    displaySpeed = argument1
        
    textLength = string_length(text)
}

return textBox

