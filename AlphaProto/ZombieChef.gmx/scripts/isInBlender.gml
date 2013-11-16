xPos = argument0;
yPos = argument1;

if (isInRectangle(xPos, yPos, START_BLENDER_X, START_BLENDER_Y, BLENDER_WIDTH, BLENDER_HEIGHT))
{
    return true;
}

return false;
