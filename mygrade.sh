#!/bin/bash

#Checks if you have 4 arguments for the grades. If not tells you which order to add the arguments following an exit 1
if [ $# -lt 4 ]; then
    echo "Please Add 4x Arguments"
    echo "Arg 1 = Assignment Grade Total average ($1)" 
    echo "Arg 2 = Test1 Grade ($2)"
    echo "Arg 3 = Test2 Grade ($3)"
    echo "Arg 4 = Final Exam Grade ($4)"
    exit
#This could be changed but it's just the other option instead of an else if that will take your inputs and assign them to their proper value which is:
# Assignments 40%
# Test1 15%
# Test2 15%
# Final exam 30%
# Last Variable just adds the low end percentages up to toal it's overall of 100 points.
else
    Ass=$(($1 * 40/100))
    Tes1=$(($2 * 15/100))
    Tes2=$(($3 * 15/100))
    Fin=$(($4 * 30/100))
    GRADE=$(($Ass + $Tes1 + $Tes2 + $Fin))
# Shows user each value of the total 100 the section is worth.
    echo Your Assignment is worth $Ass overall
    echo Your Assignment is worth $Tes1 overall
    echo Your Assignment is worth $Tes2 overall
    echo Your Assignment is worth $Fin overall
    echo ""
    echo Your Overall Percentage: $GRADE
    echo ""
    echo -n "This letter is your worth... "
# Case statement to take the final percentage of 100 and assignes the letter for the user.
        case $GRADE in 
            *[90..100]) echo "A+" ;;
            *[85..89]) echo "A" ;;
            *[88..84]) echo "A-" ;;
            *[77..79]) echo "B+" ;;
            *[73..76]) echo "B" ;;
            *[70..72]) echo "B-" ;;
            *[67..69]) echo "C+" ;;
            *[63..66]) echo "C" ;;
            *[60..62]) echo "C-" ;;
            *[57..59]) echo "D+" ;;
            *[53..56]) echo "D" ;;
            *[50..52]) echo "D-" ;;
            *[0..50]) echo "F" ;;
            *) echo "Exiting due to lack of being able to score"
            exit 0
        esac
fi
