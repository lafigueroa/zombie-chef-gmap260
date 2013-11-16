// Mastah function
// Returns true if successful

object = argument0;
x = argument1;
y = argument2;
startPositionX = argument3;
startPositionY = argument4;

// Check if object is in plate range
plateNumber = isInPlates(x, y);
if (plateNumber != 0) 
    {
    snapToPlate(object, plateNumber);
    return true;
    }

// Check if object is in grill range
grillNumber = isInGrill(x, y);
if (grillNumber != 0 and object.originalSprite != ice_cream and object.originalSprite != blood_bucket)
    {
    snapToGrill(object, grillNumber);
    object.onGrill = true;
    if (object.cooked == false)
        {
        object.alarm[0] = 30*SECONDS_TO_COOK; // turn on a timer
        }
    else if (object.cooked == true && object.burnt == false)
        {
        object.alarm[1] = 30*SECONDS_TO_BURN;
        }
    return true;
    }

// Check if object is in trash
if (isInTrash(x, y))
    {
    snapToPosition(object, startPositionX, startPositionY); // Put object back to original position
    object.image_blend = make_color_rgb(255, 255, 255); // Change color appropriately depending on cooked or burnt status
    // Reset image properties appropriately
    object.cooked = false;
    object.burnt = false;
    return true;
    }
    
// Check if object is in blender
if (isInBlender(x, y))
    {
    blender.sprite_index = blender_static; // Change blender to static
    blender.x = START_BLENDER_X;
    blender.y = START_BLENDER_Y;
    snapToPosition(object, startPositionX, startPositionY); // Put object back to original position
    return true;
    }
    
snapToPosition(object, startPositionX, startPositionY); // Put object back to original position
    
return false;
