import pandas as pd

def standardize_dates_to_datetime(
        df: pd.DataFrame, 
        columns: list):
    
    for column in columns:
        df[column] = pd.to_datetime(df[column], format='mixed')
        df[column] = df[column].dt.strftime('%Y-%m-%d %M:%H:%S.%f')
    
    return df
