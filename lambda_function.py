#!/usr/bin/env python
# coding: utf-8

# In[ ]:


# inserting data in our RDS
    schema="YOUR_DATABASE_NAME"
    host="YOUR_HOST_NAME"
    user="admin" #maybe root
    password="YOUR_PASSWORD"
    port=3306
    con = f'mysql+pymysql://{user}:{password}@{host}:{port}/{schema}'
            
    # cities data
    df = recreate_wiki(list_of_cities)
    pop_df = df[['population','latitude','longitude']]
    pop_df.to_sql('populations',con=con, if_exists='append', index=False)
    
    # flights data
    df2 = get_arrivals(icaos)
    flight_df = df[['flight_number','departure_icao','arrival_time_local','arrival_icao','departure city']]
    flight_df.to.sql['flights', con=con, if_exists='append', index=False)]
    
    #weathers data
    df3 = get_weather_loop(cities)
    weather_df = df[['forecast_time','outlook','temperature','temperature_feel_like','wind_speed','rain','humidity']]
    weather_df.to.sql['weathers', con=con, if_exists='append', index=False)]
    

