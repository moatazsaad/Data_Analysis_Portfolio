Movies-Dealing with API, JSON Files.ipynb:
    This notebook retrieves movie data from an API (The Movie Database - TMDb) using requests.
    It deals with JSON files obtained from the API, parsing them into a Pandas DataFrame.
    It demonstrates working with JSON data in Python, normalizing nested JSON structures into flat tables.

Movies-Data Cleaning.ipynb:
    This notebook focuses on cleaning the movie dataset obtained in the previous notebook.
    It handles stringified JSON columns, converting them into usable formats.
    It flattens nested columns, making them suitable for analysis.
    It cleans numerical and object columns, converting them to appropriate data types and handling missing values.
    Finally, it cleans up the dataset, removes duplicates, and prepares it for further analysis.

Movies-Merging, Transforming Data.ipynb:
    This notebook loads additional data (credits.csv) and merges it with the cleaned movie dataset.
    It prepares the data by handling stringified JSON columns related to cast and crew.
    It extracts relevant information such as director names from the crew data.
    It transforms the data for analysis and saves it for future use.

Movies-EDA.ipynb:
    This notebook conducts exploratory data analysis (EDA) on the merged dataset.
    It explores various features such as budget, revenue, ratings, genres, franchises, directors, and actors.
    It visualizes data using histograms, bar plots, and word clouds.
    It answers specific questions regarding successful directors, actors, genres, and franchise movies.
    It examines trends over time, such as changes in popular genres between different decades.
    
Working with pandas sql.ipynb:
    It creates four separate DataFrames from the loaded JSON data: movies, votes, genres, and prod.
    It creates a SQLite database named movies.db and saves these DataFrames as tables within this database.
    The script then demonstrates loading data from the SQLite database back into Pandas DataFrames.
    It executes various SQL queries on the database using Pandas' pd.read_sql function to perform operations like counting, summing, selecting, joining, and filtering data.
