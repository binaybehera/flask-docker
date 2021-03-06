FROM python:3
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# Install application
COPY app.py code_run.py ./
# Run application
# CMD python code_run.py
CMD ["python", "code_run.py", "dataset"]
