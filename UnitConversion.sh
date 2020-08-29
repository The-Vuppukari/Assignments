#!/bin/bash -x

echo "UnitConversion a. Inches to Feet Conversion"

feetInInches=12

echo " The Value of 1 Feet = $feetInInches inches"

noOfInches=42
echo " The number of Inches = $noOfInches"

inchesToFeet=$(echo $noOfInches $feetInInches | awk '{ printf "%0.3f",$1/$2}')
echo " The $noOfInches Inches = $inchesToFeet Feet"

echo "UnitConversion b. Feet to Meters"

feetInMeters=0.3048

lengthOfPlotInFeet=60

breadthOfPlotInFeet=40

lengthOfPlotInMeters=$(echo $lengthOfPlotInFeet $feetInMeters | awk '{ printf "%0.3f",$1*$2}')

breadthOfPlotInMeters=$(echo $breadthOfPlotInFeet $feetInMeters | awk '{ printf "%0.3f",$1*$2}')

areaOfRectangularPlot=$(echo $lengthOfPlotInMeters $breadthOfPlotInMeters | awk '{ printf "%0.3f",$1*$2}')

noOfPlots=25

totalAreaOfPlotsInMeters=$(echo $areaOfRectangularPlot $noOfPlots | awk '{ printf "%0.3f",$1*$2}')

Acre=4046.85642

totalAreaOfPlotsInAcres=$(echo $totalAreaOfPlotsInMeters $Acre | awk '{ printf "%0.4f",$1/$2}')
