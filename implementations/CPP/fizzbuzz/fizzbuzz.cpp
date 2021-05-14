#include <cstdio>
#include <cstdint>
#include <cstdlib>

int main(int argc, char const *argv[])
{
    uint64_t limit;
    bool hasLimit = false;
    if(argc > 1) {
        hasLimit = true;
        limit = strtoul(argv[1], nullptr, 10);
    }
    uint64_t curr = 1;
    while (!hasLimit || curr <= limit) {
        int mod3 = curr % 3;
        int mod5 = curr % 5;
        if(mod3 == 0 && mod5 == 0) {
            printf("%s\n", "FizzBuzz");
        } else if(mod3 == 0) {
            printf("%s\n", "Fizz");
        } else if(mod5 == 0) {
            printf("%s\n", "Buzz");
        } else {
            printf("%lu\n", curr);
        }
        curr++;
    }
    return 0;
}
