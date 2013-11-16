toReturn = false;
// isInRectangle
// Determines whether the given cursor position is inside the rectangle
// argument1 = x cursor position
// arugment2 = y cursor position
// argument3 = x rectangle top left
// argument4 = y rectangle top left
// argument5 = width
// argument6 = height

if ((argument1 - argument3) < argument5 and (argument1 - argument3) > 0 and 
    (argument2 - argument4) < argument6 and (argument2 - argument4) > 0)
    {
    toReturn = true;
    }
    
return toReturn;
