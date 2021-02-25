/*
 * Snacks on Shelves
 * Author: Nurizuan Nazrin bin Komori (202800)
 * 
 * This program helps snack merchenaries to track and sell their snacks
 * for the benefit of dental industri-- ahem I mean for profit.
 * 
 */

#include <stdio.h>

#define MAX_SNACKS	10
#define MAX_SNACK_QUANTITY	10
#define PROFIT	0.5

/**************************************** FUNCTION PROTOTYPES ****************************************/
void show_snacks(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[]);
float sell_snack(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[]);
void update_quantity(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[]);

/**************************************** FUNCTION DEFINITION ****************************************/
int main()
{
	int snacks_num;
	char name[MAX_SNACKS][100];
	float price[MAX_SNACKS] = {0.0};
	int available_quantity[MAX_SNACKS] = {0};
	int sold_quantity[MAX_SNACKS] = {0};
	float total_selling_price = 0.0;

	char selection;
	int still_running = 1;
	int i;

	printf("\t\tSnacks on Shelves\n\n");

	// How many snack?
	do {
		printf("Enter number of snacks: ");
		scanf("%d", &snacks_num);
		if (snacks_num > MAX_SNACKS)
			printf("ERROR: Only maximum 10 snacks can be sold!\n\n");
	} while (snacks_num > MAX_SNACKS);

	// Ask info for each snack
	for (i = 0; i < snacks_num; i++) {
		printf("\n");
		printf("Enter snack name: ");
		scanf("%s", name[i]);
		fflush(stdin);

		printf("Enter price: RM");
		scanf("%f", &price[i]);

		do {
			printf("Enter quantity on rack: ");
			scanf("%d", &available_quantity[i]);
			if (available_quantity[i] > MAX_SNACK_QUANTITY)
				printf("ERROR: Only maximum 10 snacks can be in rack!\n\n");
		} while (available_quantity[i] > MAX_SNACK_QUANTITY);
	}


	// Program loop
	while (still_running)
	{
		printf("\nSell, Update Quantity or Exit? (S/U/E)? ");
		fflush(stdin);
		scanf(" %c", &selection);
		switch (selection)
		{
			case 's':
			case 'S':
			total_selling_price += sell_snack(snacks_num, name, price, available_quantity, sold_quantity);
			break;

			case 'u':
			case 'U':
			update_quantity(snacks_num, name, price, available_quantity, sold_quantity);
			break;

			case 'e':
			case 'E':
			still_running = 0;
			break;

			default:
			printf("ERROR: Invalid choice!\n");
			break;
		}
	}

	show_snacks(snacks_num, name, price, available_quantity, sold_quantity);
	printf("Today selling is RM%.02f\n", total_selling_price);
	printf("Profit is RM%.02f\n", total_selling_price * PROFIT);
	printf("Alhamdulillah.\n");
	return 0;
}

float sell_snack(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[])
{
	int selected_snack_no, selected_quantity;
	int selling_quantity[MAX_SNACKS] = {0};	// Need to know what is to sell, to make receipt
	float current_price, selling_total = 0;
	char sell_more;
	int i;

	do {
		// Display snacks first
		show_snacks(snacks_num, name, price, available_quantity, sold_quantity);

		// Cannot use do-while here. Instead let's loop back if invalid snack.
		printf("Enter snack no (0 to cancel): ");
		scanf("%d", &selected_snack_no);
		if (selected_snack_no == 0)
			break;
		selected_snack_no--;
		if (selected_snack_no >= snacks_num)	// 3 snack= 0, 1, 2, no snack 3
		{
			printf("ERROR: Snack not available!\n");
			continue;
		}

		do {
			printf("Enter quantity: ");
			scanf("%d", &selected_quantity);
			if (selected_quantity > available_quantity[selected_snack_no])
				printf("ERROR: Insufficient stock.\n");
		} while (selected_quantity > available_quantity[selected_snack_no]);

		// Collect what is sold to make receipt
		selling_quantity[selected_snack_no] += selected_quantity;
		available_quantity[selected_snack_no] -= selected_quantity;
		sold_quantity[selected_snack_no] += selected_quantity;

		printf("Do you want to sell more (y/n)? ");
		fflush(stdin);
		scanf(" %c", &sell_more);
	} while (sell_more == 'y');

	// Print receipt
	printf("\n");
	printf("  RECEIPT\n");
	for (i = 0; i < snacks_num; i++)
	{
		if (selling_quantity[i] == 0)
			continue;	// Do not show if selling quantity is 0

		current_price = price[i] * selling_quantity[i];
		selling_total += current_price;
		printf("  %-10s RM%.02f x %d = RM%.02f\n", name[i], price[i], selling_quantity[i], current_price);
	}
	printf("  Total is RM%.02f\n", selling_total);
	printf("\n");

	return selling_total;
}

void update_quantity(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[])
{
	int i, add_snack, new_quantity;

	show_snacks(snacks_num, name, price, available_quantity, sold_quantity);

	for (i = 0; i < snacks_num; i++)
	{
		do {
			printf("Add %s: ", name[i]);
			scanf("%d", &add_snack);
			new_quantity = available_quantity[i] + add_snack;
			if (new_quantity > MAX_SNACK_QUANTITY)	// RULE: Maximum 10 snacks in a rack
				printf("ERROR: Maximum 10 snacks in a rack! (Before: %d, After: %d)\n", available_quantity[i], new_quantity);
		} while (new_quantity > MAX_SNACK_QUANTITY);

		available_quantity[i] = new_quantity;
	}

	show_snacks(snacks_num, name, price, available_quantity, sold_quantity);
	return;
}

void show_snacks(int snacks_num, char name[][100], float price[], int available_quantity[], int sold_quantity[])
{
	int i;

	printf("\n");
	printf("\tSNACKS AVAILABLE\n");

	printf("Snack No                  | Price   | Available Quantity | Sold Quantity\n");
	//     " _1. Twisties____________ | RM1.00_ |         5_________ |       4"
	for (i = 0; i < snacks_num; i++)
	{
	printf(" %2d. %-20.20s | RM%-5.02f |         %-10d | %6d\n", i+1, name[i], price[i], available_quantity[i], sold_quantity[i]);
	}

	printf("\n");

	return;
}