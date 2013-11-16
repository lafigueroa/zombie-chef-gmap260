x = argument0; // Cursor x position
y = argument1; // Cursor y position

toReturn = false;

if (isInRectangle(x, y, TRASH_X, TRASH_Y, TRASH_WIDTH, TRASH_HEIGHT))
    {
    toReturn = true;
    }
    
return toReturn;
