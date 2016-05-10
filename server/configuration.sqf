west setFriend [east, 1];
west setFriend [independent, 0];
west setFriend [civilian, 1];

independent setFriend [west, 0];
independent setFriend [east, 0];
independent setFriend [civilian, 0];

east setFriend [west, 1];
east setFriend [independent, 0];
east setFriend [civilian, 1];

civilian setFriend [west, 1];
civilian setFriend [east, 1];
civilian setFriend [independent,0];