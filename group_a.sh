#!/bin/bash

# Define variables
github_repo="https://github.com/KuchaHyells/GROUP-A-BIOINFORMATICS-REPOSITORY.git"
output_csv="output.csv"
temp_dir="temp_repo"

# Clone the GitHub repository
echo "Cloning repository..."
git clone $github_repo $temp_dir
cd $temp_dir

# Run Python script and append to CSV
echo "Running Kuchahyells's Python script..."
python_script_output=$(python Kuchahyells.py)
echo "Python output: $python_script_output" >> $output_csv

Compile and run C script and append to CSV
echo "Compiling and running zailani's C script..."
gcc zailani.c -o script_c
c_script_output=$(./script_c)
echo "C output: $c_script_output" >> $output_csv

# Run R script and append to CSV
echo "Running R script..."
Rscript Yusuf.R >> $output_csv

# Compile and run Java script and append to CSV
echo "Compiling and running Java script..."
javac Simeon.java
java_script_output=$(java Simeon)
echo "Java output: $java_script_output" >> $output_csv

# Compile and run C# script and append to CSV
echo "Compiling and running C# script..."
mcs faisal.cs
csharp_script_output=$(mono faisal.exe)
echo "C# output: $csharp_script_output" >> $output_csv

# Clean up
cd ..


echo "CSV file generated: $output_csv"
