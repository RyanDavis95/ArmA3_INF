west setFriend [east, 1];
west setFriend [independent, 1];
west setFriend [civilian, 0];

independent setFriend [west, 1];
independent setFriend [east, 1];
independent setFriend [civilian, 0];

east setFriend [west, 1];
east setFriend [independent, 1];
east setFriend [civilian, 0];

civilian setFriend [west, 0];
civilian setFriend [east, 0];
civilian setFriend [independent,0];