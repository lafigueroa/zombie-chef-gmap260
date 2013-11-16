foodItem = argument0; // Generate order based on given food item (integer)

object = 0;
// What is the left most order paper available?
if (order1.hasOrder == false)
    {
    object = order1;
    }
else if (order2.hasOrder == false)
    {
    object = order2;
    }
  
// Generate a name of an order based on foodItem given
if (object != 0)
{
object.foodItem = foodItem;
object.hasOrder = true;
object.alarm[0] = STEPS_PER_SECOND*TIME_ORDER_RESET; // Set time limit for how long order will stay
object.image_blend = make_color_rgb(255, 255, 0);
switch (foodItem)
    {
    case (FOOD_BRAIN_BURGER):
    
    show_message("Order: Grilled Brain");
    break;

    case (FOOD_LIVER_ONIONS):
    
    show_message("Order: Grilled Liver");
    break;

    case (FOOD_FOOT_LONG):

    show_message("Order: Foot-Long Hand Sandwich");
    break;

    case (FOOD_STUFFED_INTESTINES):

    show_message("Order: Stuffed Intestines");
    break;

    case (FOOD_SPLEENGETTI):

    show_message("Order: Spleengetti and Eyeballs");
    break;

    /*
    case (FOOD_MEAT_LOVERS):

    show_message("Order: Meat Lovers Sandwich");
    break;

    case (FOOD_BRAINLOAF):

    show_message("Order: Brainloaf with gravy");
    break;
    */
    }
}
