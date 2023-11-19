#!/bin/bash

# Extended Automated Pen Testing Assistant

# Set the target domain
target_domain="example.com"
output_file="pen_test_results_$(date +%Y%m%d).txt"

# Reconnaissance
echo "Gathering domain information for $target_domain"
dig +short $target_domain > $output_file

# Basic vulnerability scan
echo "Performing basic vulnerability scan on $target_domain"
nmap -A -T4 $target_domain >> $output_file

# Additional scans like checking for SQL injection, XSS vulnerabilities, etc., can be added here

echo "Penetration testing completed. Results saved in $output_file."
