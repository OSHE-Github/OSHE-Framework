#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>
#include <libgen.h>

int main() {
    //Force script to run with suid
    if (setgid(0) != 0 || setuid(0) != 0) {
        perror("setuid/setgid failed");
        return 1;
    }

    //Construct absolute path to script
    char exe_path[PATH_MAX];
    ssize_t len = readlink("/proc/self/exe", exe_path, sizeof(exe_path) - 1);
    if (len == -1) {
        perror("readlink");
        return 1;
    }
    exe_path[len] = '\0'; //Set last value to zero for null terminator
    char *dir = dirname(exe_path); //Extract directory name

    //Make full script path from bits we have extracted.
    char script_path[PATH_MAX];
    sprintf(script_path, "%s/runI2C.sh", dir);

    //Run script
    execl("/bin/bash", "bash", script_path, NULL);

    //uh oh we arent sup[posed to be here]
    perror("Script execution failed");
    return 1;
}
