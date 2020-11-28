/*
 *C program for Tower of Hanoi using Recursion by Santho ICE-3rd.
  *The objective of the puzzle is to move the entire stack to another rod,
   obeying the following simple rules:
    1.Only one disk can be moved at a time.
    2.Each move consists of taking the upper disk
      from one of the stacks and placing it on top of another stack.
    3.No disk may be placed on top of a smaller disk.
 */
#include <stdio.h>
int count=0;
void towers(int, char, char, char);

int main()
{
    int num;

    printf("Input the number of disks: ");
    scanf("%d", &num);
    printf("\nThe sequence of moves are:\n");
    towers(num, 'A', 'C', 'B');

    printf("\n\nTotal number of moves: %d\n", count);
    return 0;
}
void towers(int num, char frompeg, char topeg, char auxpeg)
{
    if (num == 1)
    {
        printf("\n Move disk 1 from peg %c to peg %c", frompeg, topeg);
        ++count;
        return count;
    }
    towers(num - 1, frompeg, auxpeg, topeg);
    printf("\n Move disk %d from peg %c to peg %c", num, frompeg, topeg);
    ++count;
    towers(num - 1, auxpeg, topeg, frompeg);
}
