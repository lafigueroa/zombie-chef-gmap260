// Returns number from 0 to 8 represnting what part of the grill...
// 0 means no grill...

x = argument0;
y = argument1;

toReturn = 0;

if (isInRectangle(xPos, yPos, GRILL_1_X, GRILL_1_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill1
    {
    toReturn = 1;
    }
else if (isInRectangle(xPos, yPos, GRILL_2_X, GRILL_1_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill2
    {
    toReturn = 2;
    }
else if (isInRectangle(xPos, yPos, GRILL_3_X, GRILL_1_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill3
    {
    toReturn = 3;
    }
else if (isInRectangle(xPos, yPos, GRILL_4_X, GRILL_2_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill4
    {
    toReturn = 4;
    }
else if (isInRectangle(xPos, yPos, GRILL_5_X, GRILL_2_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill5
    {
    toReturn = 5;
    }
else if (isInRectangle(xPos, yPos, GRILL_6_X, GRILL_2_Y, GRILL_WIDTH, GRILL_HEIGHT)) // if in grill6
    {
    toReturn = 6;
    }
    
return toReturn;
