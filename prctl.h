#ifndef SYS_PRCTL_H
#define SYS_PRCTL_H

// Define dummy macros and functions for prctl
#define PR_SET_NAME 15

static inline int prctl(int option, ...) {
    // Dummy implementation: return success or failure based on the use case
    return 0;
}

#endif // SYS_PRCTL_H
