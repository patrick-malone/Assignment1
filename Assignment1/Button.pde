class Button
{
  String button_name;
  float button_x_pos;
  float button_y_pos;
  float button_width;
  float button_height;
  int index;
  
  Button(String name, float x_pos, float y_pos, float but_width, float but_height, int i)
  {
      button_name = name;
      button_x_pos = x_pos;
      button_y_pos = y_pos;
      button_width = but_width;
      button_height = but_height;
      index = i;
  }
  
  void draw_button()
  {
    int spacing = 5;
    float menu_x_pos, menu_y_pos;
    float menu_width = width/5, menu_height = button_menu_size[function_check];
    
    //Setting the parameters for the outline of the button.
    stroke(150);
    fill(20);
    strokeWeight(1);
    
    //This prints the button in its default position.
    if(function_check < index)
    {
      rect(button_x_pos, button_y_pos + button_menu_size[function_check], button_width, button_height, 5);
      menu_x_pos = button_x_pos;
      menu_y_pos = (button_y_pos + button_menu_size[function_check]) + (button_height + spacing);
    }
    else
    {
      rect(button_x_pos, button_y_pos, button_width, button_height, 5);
      menu_x_pos = button_x_pos;
      menu_y_pos = button_y_pos + (button_height + spacing);
    }
    
    //Setting the text parameters for the button.
    fill(150);
    textAlign(CENTER);
    textSize(18);
    
    //This prints the button in a new position based on any menu displayed above it.
    if(function_check < index)
    {
      text(button_name, button_x_pos + (button_width/2), (button_y_pos + (button_height/2)) + button_menu_size[function_check]);
    }
    else
    {
      text(button_name, button_x_pos + (button_width/2), button_y_pos + (button_height/2));
    }
    
    if(function_check == index && index == 0)
    {
      test_weapon(menu_x_pos, menu_y_pos, menu_width, menu_height);
    }
    
    if(function_check == index && index == 1)
    {
      crew_status(menu_x_pos, menu_y_pos, menu_width, menu_height);
    }
    
    if(function_check == index && index == 2)
    {
      upgrade_ship(menu_x_pos, menu_y_pos, menu_width, menu_height);
    }
    
    if(function_check == index && index == 3)
    {
      resource_monitor(menu_x_pos, menu_y_pos, menu_width, menu_height);
    }
    
  }
  
  void test_weapon(float menu_x_pos, float menu_y_pos, float menu_width, float menu_height)
  { 
    int spacing = 5;
    
    rect(menu_x_pos, menu_y_pos, menu_width, menu_height, 5);
    
    fill(20);
    stroke(150);
    ellipse(menu_x_pos + menu_width/2, (menu_y_pos + menu_height/2),
            menu_height * 3/4, menu_height * 3/4);
    
    fill(150);
    textAlign(CENTER);
    text("FIRE", menu_x_pos + (menu_width/2), (menu_y_pos + menu_height/2) + spacing);
    
     if(mousePressed == true && weapon_status != 0 && 
          (mouseY >= (menu_y_pos + (menu_height * 1/6))) && 
          (mouseY <= (menu_y_pos + (menu_height * 5/6))) && 
          (mouseX >= (menu_x_pos + menu_width/2) - (menu_height/2)) && 
          (mouseX <= (menu_x_pos + menu_width/2) + (menu_height/2)))
     {
       hide_UI = 1;
       move_ship = 1;
       
       spaceship.fire_weapon();
     }
  }
  
  void crew_status(float menu_x_pos, float menu_y_pos, float menu_width, float menu_height)
  {
    //Setting out the spacing between the different aspects of this menu.
    float vertical_spacing = menu_height/5;
    float horizontal_spacing = 5;
    
    //Declaring the width of the status bar for the crew members.
    float bar_width;
    
    //Draing the actual menu box.
    rect(menu_x_pos, menu_y_pos, menu_width, menu_height, 5);
    
    //This for loop is used to print out each crew mmber and their respective current status.
    for(int i = 0; i < crew_members.length; i++)
    {
      bar_width = (menu_width/2 - horizontal_spacing) * mental_status[i];
      
      fill(20);
      textAlign(LEFT, TOP);
      text(crew_members[i], menu_x_pos + horizontal_spacing, menu_y_pos + (i  * vertical_spacing));
      rect(menu_x_pos + menu_width/2, menu_y_pos + (i  * vertical_spacing), menu_width/2 - horizontal_spacing, vertical_spacing/2);
        
      if(mental_status[i] > 0)
      {
        fill(0, 150, 0);
        rect(menu_x_pos + menu_width/2, menu_y_pos + (i  * vertical_spacing), bar_width, vertical_spacing/2);
      }
      
      //If the status dips to 0 or below the crew member will die.
      else
      {
        fill(150);
        textAlign(CENTER, BOTTOM);
        text("DEAD", (menu_x_pos + menu_width/2) + ((menu_width/2 - horizontal_spacing)/2), (menu_y_pos + (i  * vertical_spacing) + vertical_spacing/2));
      }
    }
  }
  
  void upgrade_ship(float menu_x_pos, float menu_y_pos, float menu_width, float menu_height)
  {
    rect(menu_x_pos, menu_y_pos, menu_width, menu_height, 5);
  }
  
  void resource_monitor(float menu_x_pos, float menu_y_pos, float menu_width, float menu_height)
  {
    rect(menu_x_pos, menu_y_pos, menu_width, menu_height, 5);
  }
  
}