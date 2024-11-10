# ベースイメージとしてPythonを使用
FROM python:3.13-slim

# 作業ディレクトリの設定
WORKDIR /app

# 必要なファイルをコンテナにコピー
COPY requirements.txt requirements.txt
COPY app.py app.py

# 依存関係のインストール
RUN pip install -r requirements.txt

# アプリケーションの起動
CMD ["python", "app.py"]

