# Binary Analysis

## Getting Started
```
docker-compose run --rm --entrypoint /bin/bash grasshopper
```

## Lab
For this lab will be introducing angr and how it can be leveraged for binary analysis. All artifacts are provided in the artifacts diretory.

1. View the source of the example.c file. After compile the file.
    - c files can be compiled with gcc -o example example.c
2. Use angr template and familarize yourself with the required functions for execution
    - *A good reference is [blog post: angr introduction part 0](https://blog.notso.pro/2019-03-20-angr-introduction-part0/) and [angr docs](https://docs.angr.io/en/latest/quickstart.html)
3. Use angr to overflow the buf into the count to display WIN. 


## References
- [grasshopper](https://github.com/vr0n/grasshopper)
- [angr: quickstart](https://docs.angr.io/en/latest/quickstart.html)

*Idea for lab derived from [io.netgarage.org](https://io.netgarage.org)*
