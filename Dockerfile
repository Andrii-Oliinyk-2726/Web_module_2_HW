FROM python:3.10

# Установим рабочую директорию внутри контейнера
WORKDIR $APP_HOME

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . .

# Установим зависимости внутри контейнера
RUN pip install -r requirements.txt

# Запустим наше приложение внутри контейнера
ENTRYPOINT ["python", "bot_interface.py"]