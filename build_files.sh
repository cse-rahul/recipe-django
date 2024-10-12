echo "BUILD START"
python3.12.5 -m pip install -r requirements.txt
python3.12.9 manage.py collectstatic --noinput --clear
echo "BUILD END"