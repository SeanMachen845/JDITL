//based off of tutorial found here 
//https://www.youtube.com/watch?v=HdJ0ZUIs-AI

// textBox_script("Text", speed, x, y)
// description: function creates a textbox with associated text and prints each letter at associated speed

// argument0 and argument1 used because gamemaker will not let you use varables defined within scripts in with blocks
// inputText = argument0, displaySpeed = argument1
var xPosition = argument2
var yPosition = argument3

var textLimit = 140; // hard coded lmao. Make dynamic in future update
argument0 = string_copy(argument0, 1, 140) // hacky way to get around gamemaker script with block limitation

textBox = instance_create(xPosition, yPosition, Obj_TextBox)
    
with(textBox) {
    text = argument0
    displaySpeed = argument1
        
    textLength = string_length(text)
}

return textBox

