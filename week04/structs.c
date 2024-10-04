// a.
struct _coord {
    double x;	// COORD_X_OFFSET = 0
    double y;	// COORD_Y_OFFSET = 8
};				// COORD_STRUCT_SIZE = 16

// b.
typedef struct _node Node;
struct _node {
    int value;		// offset = 0
    Node *next;		// offset = 4
};					// size = 8

// c.
struct _enrolment {
    int stu_id; 		// offset = 0
    char course[9]: 	// offset = 4
    char term[5];  		// offset = 13
    char grade[3];		// offset = 18
    double mark; 		// offset = 24
						// size = 32 bytes
};

//d.
struct _queue {
    int nitems;
    int head; 
    int tail;
    int maxitems;  
    Item *items;  
};
