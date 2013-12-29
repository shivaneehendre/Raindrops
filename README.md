Raindrop game:
  This will be a moving circle going across the bottom of the screen. There will be raindrops falling from the top of the screen, and everytime one hits the catcher, it will disappear. There will also be a score on the screen, and everytime a raindrop disappears, the score will increase by one. If three raindrops are missed, the game is over. If the score reaches 30, the player beats the game.

Steps:
- create raindrops(circles)
- create catcher
- get catcher to recognize raindrops, and once it is caught, it goes away
- score will continue to increase until a certain point, or a game over screen may flash at some point. 

Most of my bugs/glitches were resolved during the process of making the game. For example, while trying to create a life system that would end the game after a specified number of raindrops hit the bottom, I had trouble getting these raindrops recognized. Sometimes, the number of lives would not change, other times, it would decrease by two. This problem was resolved with help by changing the way the raindrops were recognized and altering what happened to the raindrops after they had fallen. 

I also had various problems with getting Github to work at home, especially with getting Github to recognize that I had made changes. Sometimes, it would not recognize that I had made changes that needed to be committed. This eventually fixed itself, but for a while I could not commit from anywhere other than class, even when I worked on my code at home.

There was a problem with where the raindrops fell towards the end of the game. I had them set to fall at "random(width)" but they would continue to fall in the same three or four spots near the beginning of the screen for the whole game, regardless of whether the previous one had been caught or missed. The raindrops would fall at the right time but only fall from these same spots. This made the game frustratingly easy because barely any work had to be done since they would fall in the same area. I resolved this by changing the code and giving the raindrops a smaller range. They now avoid the hearts on the right side of the screen and partially avoid the left edge of the screen. 
