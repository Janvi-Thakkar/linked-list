#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<malloc.h>
void createll();
struct node
{
  int data;
  struct node *next;
};
struct node *first=NULL;
struct node *new_node;
struct node *ptr;
void main()
{
   int choice;
//   clrscr();
   printf("\n 1 create link list\n 2 exit");
   printf("\n enter yuor choice:-");
   scanf("%d",&choice);
   switch(choice)
   {
        case 1:
        {
              createll();
              break;
        }
        case 2:
        {
             exit(0);
             break;
        }
    }
    getch();
}
void createll()
{
    int n,i,num;
    printf("\n how many number:-");
    scanf("%d",&n);
    printf("\n inserted number:-");
    scanf("%d",&num);
    for(i=0;i<n;i++)
    {
       new_node=(struct node *)malloc(sizeof(struct node));
       new_node->data=num;
       if(first==NULL)
       {
           first=new_node;
           new_node->next=NULL;
       }
       else
       {
           ptr=first;
           while(ptr->next!=NULL)
           {
              ptr=ptr->next;
           }
       }
       printf("\n inserted value:-");
       scanf("%d",&num);
    }
}
