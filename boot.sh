#!/bin/bash

source venv/bin/activate
python run.py
exec gunicorn -b 0.0.0.0:8000 -w 4 run:app
