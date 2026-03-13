import nflreadpy as nfl
import pandas as pd

# Load play-by-play data
pbp = nfl.load_pbp([2024, 2025])

# Convert from Polars to Pandas
pbp = pbp.to_pandas()

# Keep only Eagles offense
eagles = pbp[pbp["posteam"] == "PHI"].copy()

# Keep only the columns for your SQL project
cols = [
    "season",
    "week",
    "game_id",
    "posteam",
    "defteam",
    "play_type",
    "down",
    "ydstogo",
    "yardline_100",
    "yards_gained",
    "touchdown",
    "pass_attempt",
    "rush_attempt",
    "epa",
    "success",
    "passer_player_name",
    "rusher_player_name",
    "receiver_player_name"
]

eagles = eagles[cols]

# Optional: remove rows where play_type is missing
eagles = eagles[eagles["play_type"].notna()]

# Save cleaned CSV
eagles.to_csv("eagles_2024_2025_clean.csv", index=False)

print("Clean CSV saved successfully")
print(eagles.head())
print(eagles.columns.tolist())