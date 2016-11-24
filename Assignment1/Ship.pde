class Ship
{
  int hull_type;
  int cockpit_type;
  int stabilisers_type;
  int weapon_type;
  int engine_type;
  
  Ship(int hull, int cockpit, int stabilisers, int weapon, int engine)
  {
    hull_type = hull;
    cockpit_type = cockpit;
    stabilisers_type = stabilisers;
    weapon_type = weapon;
    engine_type = engine;
  }
  
  void draw_ship()
  {
    float start_point_x, start_point_y;
    float hull_width, hull_height;
    
    hull_width = 400;
    hull_height = 200;
    
    start_point_x = (width/2 - hull_width/2);
    start_point_y = (height/2 - hull_height/2);
    
    draw_hull(start_point_x, start_point_y, hull_width, hull_height);
    draw_cockpit(start_point_x, start_point_y, hull_width, hull_height);
    draw_stabilisers(start_point_x, start_point_y, hull_width, hull_height);
    draw_weapon();
    draw_engine();
  }
  
  void draw_hull(float start_point_x, float start_point_y, float hull_width, float hull_height)
  {
    switch (hull_type)
    {
      case 1:
      {
        stroke(70, 70, 70);
        noFill();
        rect(start_point_x, start_point_y, hull_width, hull_height);
        
        //This is the trimming on the top half of the ship's hull.
        line(start_point_x, start_point_y + (hull_height * (1/4f)), 
            start_point_x + (hull_width * (1/8f)), start_point_y + (hull_height * (1/8f)));
            
        line(start_point_x + (hull_width * (1/8f)), start_point_y + (hull_height * (1/8f)), 
            start_point_x + (hull_width * (7/8f)), start_point_y + (hull_height * (1/8f)));
            
        line(start_point_x + (hull_width * (7/8f)), start_point_y + (hull_height * (1/8f)), 
            start_point_x + hull_width, start_point_y + (hull_height * (1/4f)));
        
        //This is the trimming on the bottom half of the ship's hull.    
        line(start_point_x, start_point_y + (hull_height * (3/4f)), 
            start_point_x + (hull_width * (1/8f)), start_point_y + (hull_height * (7/8f)));
            
        line(start_point_x + (hull_width * (1/8f)), start_point_y + (hull_height * (7/8f)), 
            start_point_x + (hull_width * (7/8f)), start_point_y + (hull_height * (7/8f)));
            
        line(start_point_x + (hull_width * (7/8f)), start_point_y + (hull_height * (7/8f)), 
            start_point_x + hull_width, start_point_y + (hull_height * (3/4f)));
        
      }
      
      case 2:
      {
        
      }
      
      case 3:
      {
        
      }
    }
  }
  
  void draw_cockpit(float start_point_x, float start_point_y, float hull_width, float hull_height)
  {
    switch (cockpit_type)
    {
      case 1:
      {
        //This hull type is of a conical type.
        arc((start_point_x + hull_width), (start_point_y + (hull_height/2.0)), 
            (hull_width * 1/4), (hull_height/2.0), -radians(90), (HALF_PI));
        
        arc((start_point_x + hull_width), (start_point_y + (hull_height/2.0)), 
            (hull_width * 3/4), hull_height, -radians(90), (HALF_PI)); 

      }
      
      case 2:
      {
        
      }
      
      case 3:
      {
        
      }
    }
  }
  
  void draw_stabilisers(float start_point_x, float start_point_y, float hull_width, float hull_height)
  {
    switch (stabilisers_type)
    {
      case 1:
      {
        //This is the code for the top wing/stabiliser.
        line(start_point_x + (hull_width * 1/8), start_point_y,
              start_point_x, start_point_y - (hull_height * .5));
              
        line(start_point_x, start_point_y - (hull_height * .5),
              start_point_x + (hull_width * 3/4), start_point_y);
        
        //This is the code for the bottom.
        line(start_point_x + (hull_width * 1/8), start_point_y + hull_height,
              start_point_x, start_point_y + (hull_height * 1.5));
              
        line(start_point_x, (start_point_y + (hull_height * 1.5)),
              start_point_x + (hull_width * 3/4), start_point_y + hull_height);
        
      }
      
      case 2:
      {
        
      }
      
      case 3:
      {
        
      }
    }
  }
  
  void draw_weapon()
  {
    switch (weapon_type)
    {
      case 1:
      {
        
      }
      
      case 2:
      {
        
      }
      
      case 3:
      {
        
      }
    }
  }
  
  void draw_engine()
  {
    switch (engine_type)
    {
      case 1:
      {
        
      }
      
      case 2:
      {
        
      }
      case 3:
      {
        
      }
    }
  }
}  
    