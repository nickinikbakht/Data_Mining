#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import pandas as pd
aqi_data=pd.read_csv('thyroid.csv')
aqi_data.nunique()
aqi_data.groupby('Outcome').size()
aqi_data.groupby('T3_resin').size()
aqi_data.groupby('Serum_thyroxin').size()
aqi_data.groupby('Basal_TSH').size()
aqi_data.groupby('Abs_diff_TSH').size()

