# irontask

使い方




必要なソフトをインストール

sudo apt install tmux

sudo apt install expect

リポジトリに移動

cd irontask

ファイルに必要な情報を入力

sudo nano irontask.sh

ファイルの中の
#wallet faucet
echo "メールアドレス"|ironfish faucet

の"メールアドレス"を登録したメールアドレスに変更

tmux new -s ironfish

でtmuxを実行

bash irontask.sh
で自動実行スタート
