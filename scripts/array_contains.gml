/// array_contains(array, value) -> Bool

var array = argument0
var value = argument1

if array == undefined {
    return false
} 

for (var i = 0; i < array_length_1d(array); i++) {
    if array[i] == value {
        return true
    }
}

return false

