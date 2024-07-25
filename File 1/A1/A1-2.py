#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import pandas as pd
aqi_data=pd.read_csv('thyroid.csv')
aqi_data.head(10)
aqi_data.describe()

