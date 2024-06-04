import io
import json
import pandas as pd


import handlers.api_handler as api_handler
import utils.datetime_utils as datetime_utils


def main(url: str):

    content = api_handler.make_api_request(url=url)
    
    df_json = json.loads(content)
    df_json_cats = io.StringIO(json.dumps(df_json))
    
    df = pd.read_json(
        path_or_buf=df_json_cats, 
        dtype=object)
    
    dt_columns = ['createdAt', 'updatedAt']
    
    df = datetime_utils.standardize_dates_to_datetime(
                                                df=df, 
                                                columns=dt_columns)
    
    df.to_csv('./cat_facts.csv',index=False)


if __name__ == '__main__':
    
    url = f'https://cat-fact.herokuapp.com/facts'
    
    try:
        main(url=url)
        print('App Executed Perfectly!')

    except Exception as e:
        print(f'Error Executing App: {e}')
        raise e
        