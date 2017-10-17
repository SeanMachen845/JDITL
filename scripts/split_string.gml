/// split_string("Text", delimiter)
// splits string with delimiter

var text = argument0
var delimiter = argument1

var currentWord = "" // the current word
var arrayPlacement = 0 // current end of array
var wordArray // the array of words

show_debug_message(text)
for(i = 1; i <= string_length(text); i++) {
    char = string_char_at(text, i)
    if char == delimiter {
        if string_length(currentWord) != 0 {
            wordArray[arrayPlacement] = currentWord
            currentWord = ""
            arrayPlacement++
        }
    } else {
        currentWord += char
    }
}

if string_length(currentWord) != 0 {
    wordArray[arrayPlacement] = currentWord
}

show_debug_message(wordArray)

return wordArray

