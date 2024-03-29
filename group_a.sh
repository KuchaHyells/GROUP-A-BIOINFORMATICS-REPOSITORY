#!/bin/bash

# Define variables
github_repo="https://github.com/KuchaHyells/GROUP-A-BIOINFORMATICS-REPOSITORY.git"
output_csv="Group_A_File.csv"
temp_dir="Group_A_Folder"

rm -f $output_csv

# Clone the GitHub repository
echo "Cloning repository..."
git clone $github_repo $temp_dir
cd $temp_dir

# Run Python script and append to CSV
echo "Running Kuchahyells's Python script..."
echo "Group A" >> $output_csv
echo "Project,Name ,Email, Slack Username, Area of interest" >> $output_csv
echo "Python,Kuchahyells Mathias , damysteriesj@gmail.com,Kuchahyells Mathias,Proteomics & Data Analysis">> $output_csv
R

Compile and run C script and append to CSV
echo "Compiling and running zailani's C script..."
gcc zailani.c -o script_c
c_script_output=$(./script_c)
echo "C language,Abdulkadir Zailani, abdulkadirzailani116@gmail.com,Abdulkadir Zailani,Data Analysis">> $output_csv

# Run R script and append to CSV
echo "Running R script..."
echo "R language,Yusuf Bhlyakamsui,yusufbhlyakamsu@gmail.com,Yusuf Bhlyakamsu,Data Processing">> $output_csv

# Compile and run Java script and append to CSV
echo "Compiling and running Java script..."
javac Simeon.java
java_script_output=$(java Simeon)
echo " Java,Simeon Benjamin,simeonbenjamin5225@gmail.com,Simeon Benjamin,Data Analysis">> $output_csv


# Compile and run C# script and append to CSV
echo "Compiling and running C# script..."
mcs faisal.cs
csharp_script_output=$(mono faisal.exe)
echo " C#,Faisal Ibrahim,ibrahimfaisal20001ha@gmail.com,Faisal Ibrahim,Epigenomics">> $output_csv

# Clean up
cd ..



echo "CSV file generated: $output_csv"
