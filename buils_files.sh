echo "BUILD START"
python 3.12.5 -m pip install -r requirements.txt
python 3.12.9 manage.py collectstatic --noinput --clear
echo "BUILD END"