object = argument0;
plateNumber = argument1;

switch (plateNumber) 
{
    case (1):
        object.x = PLATE1_CENTER_X;
        object.y = PLATE_CENTER_Y;
        if ((object.foodItem == order2.FirstOrder.foodItem) && object.cooked == true)
        {
            
            
            
            
            dragRelease(object, 380, 430 , object.startX, object.startY);
            
            
            order2.FirstOrder.foodItem = -1;
            order2.FirstOrder.hasOrder = false;
        }
        break;
    case (2):
    if ((object.foodItem == order2.SecondOrder.foodItem) && object.cooked == true)
        {
           
            
            dragRelease(object,380, 430, object.startX, object.startY  && object.cooked == true);
            
           
            order2.SecondOrder.foodItem = -1;
            order2.SecondOrder.hasOrder = false;
        }
        object.x = PLATE2_CENTER_X;
        object.y = PLATE_CENTER_Y;
        break;
    case (3):
    if ((object.foodItem == order2.ThirdOrder.foodItem)  && object.cooked == true)
        {
          
            
            
            dragRelease(object, 380, 430, object.startX, object.startY);
            
           
            order2.ThirdOrder.foodItem = -1;
           order2.ThirdOrder.hasOrder = false;
        }
        object.x = PLATE3_CENTER_X;
        object.y = PLATE_CENTER_Y;
        break;
    case (4):
    if ((object.foodItem == order2.FourthOrder.foodItem) && object.cooked == true)
        {
            
           
           
            dragRelease(object, 380, 430, object.startX, object.startY);
            
           
            order2.FourthOrder.foodItem = -1;
            order2.FourthOrder.hasOrder = false;
        }
        object.x = PLATE4_CENTER_X;
        object.y = PLATE_CENTER_Y;
        break;
}
