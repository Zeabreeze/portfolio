#!/usr/bin/env python3

##--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 22 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#Provide a list of companies that are effected.  These companies are 
#in healthcare sector.
#--------------------------------------------------------------
#
#

# importing the required modules
import matplotlib
import matplotlib.pyplot as plt

# x-coordinates of left sides of bars 
left = [1, 2, 3, 4, 5, 6, 7]

# -- Heights of bars --
#Note:
# The actual values are y-axis = [1,300,000, 515,000, 9,700,000, 
# 1,648,922, 9,800,000, 6,400,000, 95,000]
# for graph to fit, we use a ratio of 1:1OOK.
#Example, the value 1,300,000 will be height of 13
#Another example, the value 95,000 will be height round up to 1.
height = [13, 5, 97, 16, 98, 64, 1]

# labels for bars
tick_label = ['Energy', 'Human\nitarian', 'Health\ncare', 'Online', 'Telecom\nmunications', 'Various', 'Retail']

# plotting a bar chart
plt.bar(left, height, tick_label = tick_label,
        width = 0.5, color = ['green', 'blue'])
  
# naming the x axis
plt.xlabel('Industry')
# naming the y axis
plt.ylabel('Records in ratio of 1:100K')
  
# giving a title to my graph
plt.title('Industry effected by data breaches in 2022')

#save the bar graph to a file
plt.savefig("task4.png")