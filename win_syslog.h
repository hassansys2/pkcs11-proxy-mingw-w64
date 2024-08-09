#ifndef WIN_SYSLOG_H
#define WIN_SYSLOG_H

#include <stdio.h>
#include <stdarg.h>

#define LOG_ERR 3
#define LOG_INFO 6

void syslog(int priority, const char *format, ...) {
    va_list args;
    va_start(args, format);
    vfprintf((priority == LOG_ERR) ? stderr : stdout, format, args);
    va_end(args);
}

void openlog(const char *ident, int option, int facility) {
    // No-op for Windows
}

void closelog(void) {
    // No-op for Windows
}

#endif // WIN_SYSLOG_H
