/* BluFor as Survivors */
west setFriend [east, 1];
west setFriend [independent, 0];
west setFriend [civilian, 1];

/* Independents as Zombies */
independent setFriend [west, 0];
independent setFriend [east, 0];
independent setFriend [civilian, 0];

/* OpFor as Survivors */
east setFriend [west, 1];
east setFriend [independent, 0];
east setFriend [civilian, 1];

/* Civs as Survivors */
civilian setFriend [west, 1];
civilian setFriend [east, 1];
civilian setFriend [independent,0];