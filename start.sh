echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kumarmanu69/subin-vc-plyr /subin-vc-plyr
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kumarmanu69/subin-vc-plyr -b $BRANCH /subin-vc-plyr
fi
cd /subin-vc-plyr
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
