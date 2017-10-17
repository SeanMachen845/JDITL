/// pad_text_for_display("Text", maxWidth, textSizeMultiplyer)
// Assumes no new line charactures are present

var text = argument0
var maxWidth = argument1
var textSizeMultiplyer = argument2
var spaceWidth = string_width(" ") * textSizeMultiplyer

var textWordArray = split_string(text, ' ')

var paddedText = ""
var currentLine = ""
draw_set_font(TEXT_BOX_FONT) // set font so string_width gets accurate values

for(i = 0; i < array_length_1d(textWordArray); i++) {
    currentWord = textWordArray[i]
    newLineWidth = ((string_width(currentLine) + string_width(currentWord)) * textSizeMultiplyer ) + spaceWidth
    if newLineWidth > maxWidth {
        if paddedText != "" { // don't add new line for first line
            paddedText += "#"
        }
        paddedText += currentLine
        currentLine = currentWord
    } else { // add the word to the line
        if currentLine != "" {
            currentLine += " "
        }
        currentLine += currentWord 
    }
}

if currentLine != "" { // add the final line
    if paddedText != "" {
        paddedText += "#"
    }
    paddedText += currentLine
}

draw_set_font(DEFAULT_FONT)

show_debug_message(paddedText)

 return paddedText

