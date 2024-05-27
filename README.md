# olympics

## Overview

This project contains a series of SQL queries used to analyze the Olympics dataset. The queries are designed to answer various questions about the Olympic Games, such as medal counts, sports statistics, and athlete performances.

## Dataset

The dataset used in this project is named `olympics`. It contains data about Olympic athletes, their events, and the medals they won.

## SQL Queries

Below are the SQL queries included in this project along with their descriptions:

1. **Show how many medal counts present for entire data**
   ```sql
   SELECT COUNT(medal) FROM olympics;
