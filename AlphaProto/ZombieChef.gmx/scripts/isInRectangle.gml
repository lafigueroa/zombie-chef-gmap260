toReturn = false;
// isInRectangle
// Determines whether the given cursor position is inside the rectangle
// argument0 = x cursor position
// arugment1 = y cursor position
// argument2 = x rectangle top left
// argument3 = y rectangle top left
// argument4 = width
// argument5 = height

if ((argument0 - argument2) < argument4 and (argument0 - argument2) > 0 and 
    (argument1 - argument3) < argument5 and (argument1 - argument3) > 0)
    {
    toReturn = true;
    }
    
return toReturn;
