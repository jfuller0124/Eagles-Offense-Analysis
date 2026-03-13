# Philadelphia Eagles Offense Analysis (2024 vs 2025)
This project analyzes the offensive performance of the Philadelphia Eagles during the 2024 and 2025 NFL seasons using Python, MySQL, and Tableau. Play-by-play data was imported into a relational database and analyzed to compare playcalling tendencies, efficiency, success rate, and explosive plays between the two seasons.

## Project Goals
- Practice SQL for data analysis
- Work with real-world sports data
- Build a Tableau dashboard for visualization
- Compare offensive performance between seasons
- Demonstrate data cleaning, querying, and visualization skills

## Tools Used
- MySQL Workbench 8.0 CE
- SQL
- Tableau
- Python (data download / cleaning)
- nflverse play-by-play dataset

## Dataset
NFL play-by-play data for the 2024 and 2025 seasons was downloaded using Python and filtered to include only offensive plays by the Philadelphia Eagles.
Fields used include:
- season
- play_type
- down
- yards_gained
- epa (Expected Points Added)
- success
- passer_player_name
- rusher_player_name

## Metrics Analyzed
### 1. Pass vs Run Playcalling
Compared total rushing vs passing plays by season.

### 2. Expected Points Added (EPA)
Measured offensive efficiency per play.
EPA = Expected Points After − Expected Points Before
Higher EPA indicates more effective plays.

### 3. Success Rate by Down
Measured how often a play resulted in a positive outcome.
Success rate was compared across:
- 1st down
- 2nd down
- 3rd down
- 4th down
- 
### 4. Explosive Plays
Explosive plays were defined as:
- Pass ≥ 20 yards
- Run ≥ 10 yards
These plays often have the largest impact on scoring.

## Key Findings
- The Eagles ran more rushing plays in 2024 than in 2025
- Offensive efficiency (EPA per play) was higher in 2024
- Success rate on 3rd down declined in 2025
- The number of explosive plays decreased in 2025
- Overall offensive production was lower in 2025
  
## Tableau Dashboard
The dashboard includes:
- Pass vs Run comparison
- EPA per play
- Success rate by down
- Explosive plays by season

