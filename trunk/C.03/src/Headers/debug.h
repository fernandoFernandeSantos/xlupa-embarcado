

#define DEBUG
#undef DEBUG


#ifdef DEBUG
 #define DEBUG_LINE() printf("%s %d\n", __FILE__, __LINE__)
 #define DEBUG_PRINT(fmt, args...) fprintf(stderr, fmt, ## args) 
#else
 #define DEBUG_LINE() 
 #define DEBUG_PRINT(fmt, args...) 
#endif

