// Surname & intials: Leqele B.G
// Student number: 202002775
// Function: the function of the program is to print 10 reversible prime square numbers

#include<math.h>
#include<stdio.h>

void reversible_prime() //function name for prime reversible square
{
	float point;
	auto i,j,remainder,number,count=1,flag=0; //compiler automatically knows the data type
	
	
	for (i=1; i>0; i++)  
	{
		for(j=2; j<=i/2; j++) //prime check for loop

		{
			if (i%j==0) 
			{
				flag=1;
				break;  //end prime check for loop
			}
		}
		if (flag==0)
		{
			long prime=i*i,reversed=0;
			while (prime!= 0) // reverse number function
			{
				remainder = prime%10;
				reversed = (reversed*10) + remainder;
				prime/=10; //end of reverse number function
			}
			if (i*i !=reversed)  
			{
				int number = sqrt((double)reversed);  
				float point = sqrt((double)reversed);
				if(number == point) 
				{
					for(j=2;j<=number/2;++j)
					{
						if(number%j==0)
						{
							flag=1;
							break;
						}
					}
					if (flag==0)
					{
						printf("%d\n", i*i); 
						count++; 
					}
				}
			}
		}
		flag=0;
		if(count ==11)
		break;
	}
}
int main()
{
	reversible_prime(); //function call
	return 0;
}

