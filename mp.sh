#!/bin/bash
price=0
touch bill.txt
while true 
do 
echo "Welcome to Our SuperMarket 
---------------------------------------------------------------------

	OUR PRODUCT CATEGORIES ARE....
	---------------------------------------------
	Category No.		Category Name		
	1.			Vegetables & Fruits			
	2.			Snacks & Baverages		
	3.			Stationary
	4.			Dairy
	5.			Cleaners
	6.			Personal Care
	--------------------------------------------
	7.Exit
	--------------------------------------------
	Choose your Category number:
	"
	read catChoice
	
	case $catChoice in
	1)
	while true
	do
	echo "
	*************************************************************************
	FRUITS AND VEGETABLES
	*************************************************************************
	Product No.		Fruits and Vegetable Name		Price
	
	1.			Mango					80 RS/kg					
	2.			Banana					70 RS/kg
	3.			Apples					40 RS/kg
	4.			Tomato					15 RS/kg
	5.			Spinach					20 RS/kg
	6.			Broccoli				155 Rs/kg
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Fruit and vegetable number:
	"
	read fvNo
	if (( "$fvNo" == "7" ))
	then
	break;
	else
	echo "
	Enter Quantity of product (in kg) :"
	read quantity1	
	if (("$fvNo" == "1"))
	then
	price=$(expr $price + $(expr $quantity1 \* 80))
	echo -e "Mango \t\t\t\t 80 \t"   $quantity1 >> bill.txt
	elif (("$fvNo" == "2"))
	then
	price=$(expr $price + $(expr $quantity1 \* 70))
	echo -e "Banana \t\t\t\t  70 \t"   $quantity1 >> bill.txt
	elif (("$fvNo" == "3"))
	then
	price=$(expr $price + $(expr $quantity1 \* 40))
	echo -e "Apple \t\t\t\t 40 \t"   $quantity1 >> bill.txt
	elif (("$fvNo" == "4"))
	then
	price=$(expr $price + $(expr $quantity1 \* 15))
	echo -e "Tomato \t\t\t\t  15 \t"   $quantity1 >> bill.txt
	elif (("$fvNo" == "5"))
	then
	price=$(expr $price + $(expr $quantity1 \* 20))
	echo -e "Spinach \t\t\t  20 \t"   $quantity1 >> bill.txt
	elif (("$fvNo" == "6"))
	then
	price=$(expr $price + $(expr $quantity1 \* 155))
	echo -e "Broccoli \t\t\t  155 \t" $quantity1 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	2)while true
	do
	echo "
	*************************************************************************
	SNACKS AND BEVERAGES
	*************************************************************************
	Product No.		Snacks and Beverage Name		Price
	
	1.			Potato Chips				500 RS/kg					
	2.			Oreos					30 RS/120 g
	3.			Cookies					500 RS/kg
	4.			Coca-Cola				40 RS/l
	5.			Pepsi					50 RS/l
	6.			Sprite					65 Rs/l
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Snack and Beverage number:
	"
	read sbNo
	if (( "$sbNo" == "7" ))
	then
	break;
	else
	echo "
	Enter Quantity of product ( in kg and litre):"
	read quantity2	
	if (("$sbNo" == "1"))
	then
	price=$(expr $price + $(expr $quantity2 \* 500))
	echo -e "Potato Chips \t\t\t 500\t" $quantity2 >> bill.txt
	elif (("$sbNo" == "2"))
	then
	price=$(expr $price + $(expr $quantity2 \* 30))
	echo -e "Oreos \t\t\t\t  30 \t" $quantity2 >> bill.txt
	elif (("$sbNo" == "3"))
	then
	price=$(expr $price + $(expr $quantity2 \* 500))
	echo -e "Cookies \t\t\t  500 \t" $quantity2 >> bill.txt
	elif (("$sbNo" == "4"))
	then
	price=$(expr $price + $(expr $quantity2 \* 40))
	echo -e "Coca-Cola \t\t\t  40 \t" $quantity2 >> bill.txt
	elif (("$sbNo" == "5"))
	then
	price=$(expr $price + $(expr $quantity2 \* 50))
	echo -e "Pepsi \t\t\t\t  50 \t" $quantity2 >> bill.txt
	elif (("$sbNo" == "6"))
	then
	price=$(expr $price + $(expr $quantity2 \* 65))
	echo -e "Sprite \t\t\t\t  65 \t" $quantity2 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	
	3)
	while true
	do
	echo "
	*************************************************************************
	STATIONARY
	*************************************************************************
	Product No.		Stationary Name				Price (per item)
	
	1.			Pen					50 Rs					
	2.			pencil					20 RS
	3.			Eraser					05 RS
	4.			Highlighter				40 RS
	5.			Stapler					80 Rs
	6.			Calculator				100 Rs
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Stationary number:
	"
	read stationary
	if (( "$stationary" == "7" ))
	then
	break;
	else
	echo "
	Enter Quantity of product (in item count):"
	read quantity3
	if (("$stationary" == "1"))
	then
	price=$(expr $price + $(expr $quantity3 \* 50))
	echo -e "Pen \t\t\t\t  50 \t" $quantity3 >> bill.txt
	elif (("$stationary" == "2"))
	then
	price=$(expr $price + $(expr $quantity3 \* 20))
	echo -e "Pencil \t\t\t\t  20 \t" $quantity3 >> bill.txt
	elif (("$stationary" == "3"))
	then
	price=$(expr $price + $(expr $quantity3 \* 5))
	echo -e "Eraser \t\t\t\t  05 \t" $quantity3 >> bill.txt
	elif (("$stationary" == "4"))
	then
	price=$(expr $price + $(expr $quantity3 \* 40))
	echo -e "Highlighter \t\t\t  40 \t" $quantity3 >> bill.txt
	elif (("$stationary" == "5"))
	then
	price=$(expr $price + $(expr $quantity3 \* 80))
	echo -e "Stapler \t\t\t  80 \t" $quantity3 >> bill.txt
	elif (("$stationary" == "6"))
	then
	price=$(expr $price + $(expr $quantity3 \* 100))
	echo -e "Calculator \t\t\t  100 \t" $quantity3 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	4)while true
	do
	echo "
	*************************************************************************
	DAIRY
	*************************************************************************
	Product No.		Dairy Name				Price 
	1.			Milk					55 Rs/l					
	2.			Cream					200 RS/kg
	3.			Butter					250 RS/kg
	4.			Yoghurt					140 RS/kg
	5.			Cheese					400 Rs/kg
	6.			Eggs					06 Rs/(per egg)
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Dairy product number:
	"
	read dairy
	if (( "$dairy" == "7"))
	then 
	break
	else
	echo "
	Enter Quantity of product 
	(in kg and litre, Item count for eggs only):"
	read quantity4
	if (("$dairy" == "1"))
	then
	price=$(expr $price + $(expr $quantity4 \* 55))
	echo -e "Milk \t\t\t\t  55 \t" $quantity4 >> bill.txt
	elif (("$dairy" == "2"))
	then
	price=$(expr $price + $(expr $quantity4 \* 200))
	echo -e "Cream \t\t\t\t  200 \t" $quantity4 >> bill.txt
	elif (("$dairy" == "3"))
	then
	price=$(expr $price + $(expr $quantity4 \* 250))
	echo -e "Butter \t\t\t\t  250 \t" $quantity4 >> bill.txt
	elif (("$dairy" == "4"))
	then
	price=$(expr $price + $(expr $quantity4 \* 140))
	echo -e "Yoghurt \t\t\t  140 \t" $quantity4 >> bill.txt
	elif (("$dairy" == "5"))
	then
	price=$(expr $price + $(expr $quantity4 \* 400))
	echo -e "Cheese \t\t\t\t  400 \t" $quantity4 >> bill.txt
	elif (("$dairy" == "6"))
	then
	price=$(expr $price + $(expr $quantity4 \* 6))
	echo -e "Eggs \t\t\t\t 06 \t" $quantity4 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	5)while true
	do
	echo "
	*************************************************************************
	CLEANERS
	*************************************************************************
	Product No.		Cleaner Name				Price (per item)
	
	1.			Air Freshner				150 Rs					
	2.			Bucket					200 RS
	3.			Broom & Dustpan				700 RS
	4.			Glass Cleaner Liquid			140 RS
	5.			Detergent				250 Rs 
	6.			Vinegar					60 RS
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Cleaner product number:
	"
	read cleaner
	if (( "$cleaner" == "7"))
	then 
	break
	else
	echo "
	Enter Quantity of product (in Item count ):"
	read quantity5
	if (("$cleaner" == "1"))
	then
	price=$(expr $price + $(expr $quantity5 \* 150))
	echo -e "Air Freshner \t\t\t  150 \t" $quantity5 >> bill.txt
	elif (("$cleaner" == "2"))
	then
	price=$(expr $price + $(expr $quantity5 \* 200))
	echo -e "Bucket \t\t\t\t  200 \t" $quantity5 >> bill.txt
	elif (("$cleaner" == "3"))
	then
	price=$(expr $price + $(expr $quantity5 \* 700))
	echo -e "Broom & Dustpan \t\t  700	" $quantity5 >> bill.txt
	elif (("$cleaner" == "4"))
	then
	price=$(expr $price + $(expr $quantity5 \* 140))
	echo -e "Class Cleaner Liquid  \t\t  140	" $quantity5 >> bill.txt
	elif (("$cleaner" == "5"))
	then
	price=$(expr $price + $(expr $quantity5 \* 250))
	echo -e "Detergent \t\t\t  250 \t" $quantity5 >> bill.txt
	elif (("$cleaner" == "6"))
	then
	price=$(expr $price + $(expr $quantity5 \* 60))
	echo -e "Vinegar \t\t\t  60 \t" $quantity5 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	6)while true 
	do
	echo "
	*************************************************************************
	PERSONAL CARE
	*************************************************************************
	Product No.		Personal Care Name			Price (per item)
	
	1.			Moisturiser				100 Rs					
	2.			Perfumes				150 RS
	3.			Hair shampoo				100 RS
	4.			ToothPaste				150 RS
	5.			Body Shampoo				250 Rs 
	6.			Body Soap				50 RS
	**************************************************************************
	7.EXIT
	**************************************************************************
	
	Choose your Personal Care product number :
	"
	read pcNo
	if (( "$pcNo" == "7"))
	then 
	break
	else
	echo "
	Enter Quantity of product (in Item count ):"
	read quantity6
	if (("$pcNo" == "1"))
	then
	price=$(expr $price + $(expr $quantity6 \* 100))
	echo -e "Moisturiser \t\t\t  100 \t" $quantity6 >> bill.txt
	elif (("$pcNo" == "2"))
	then
	price=$(expr $price + $(expr $quantity6 \* 150))
	echo -e "Perfumes \t\t\t  150 \t" $quantity6 >> bill.txt
	elif (("$pcNo" == "3"))
	then
	price=$(expr $price + $(expr $quantity6 \* 100))
	echo -e "Hair shampoo \t\t\t 100 \t" $quantity6 >> bill.txt
	elif (("$pcNo" == "4"))
	then
	price=$(expr $price + $(expr $quantity6 \* 150))
	echo -e "ToothPaste \t\t\t  150 \t" $quantity6 >> bill.txt
	elif (("$pcNo" == "5"))
	then
	price=$(expr $price + $(expr $quantity6 \* 250))
	echo -e "Body Shampoo\t\t\t  250 \t" $quantity6 >> bill.txt
	elif (("$pcNo" == "6"))
	then
	price=$(expr $price + $(expr $quantity6 \* 50))
	echo -e "Body Soap \t\t\t  50 \t" $quantity6 >> bill.txt
	else
	break;
	fi
	fi
	done
	;;
	
	
	
	7)break;
	esac
done
	echo "-------------------------------------------------" >> bill.txt
	echo -e "Total (RS)  \t\t\t" $price >> bill.txt
	echo "-------------------------------------------------" >> bill.txt	
	
	 
	cat bill.txt
	
	
	
	
	
	
