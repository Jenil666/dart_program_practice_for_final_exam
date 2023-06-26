//Write a program to calculate the sum of even numbers between 1 and 100 using a loop.
void main()
{
  int sum = 0;
  for(int i=0;i<=100;i++)
    {
      if(i%2==0)
        {
          sum = sum+i;
        }
    }
  print("$sum");
}