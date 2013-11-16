// Returns the number of the plate object is in
// If object is not in a plate, returns 0

xPos = argument0;
yPos = argument1;

if (isInRectangle(xPos, yPos, START_PLATE1_X, START_PLATE_Y, PLATE_WIDTH, PLATE_HEIGHT)) // if in plate1
    {
    toReturn = 1;
    }
else if (isInRectangle(xPos, yPos, START_PLATE2_X, START_PLATE_Y, PLATE_WIDTH, PLATE_HEIGHT)) // if in plate2
    {
    toReturn = 2;
    }
else if (isInRectangle(xPos, yPos, START_PLATE3_X, START_PLATE_Y, PLATE_WIDTH, PLATE_HEIGHT)) // if in plate3
    {
    toReturn = 3;
    }
else if (isInRectangle(xPos, yPos, START_PLATE4_X, START_PLATE_Y, PLATE_WIDTH, PLATE_HEIGHT)) // if in plate4
    {
    toReturn = 4;
    }
    
return toReturn;


