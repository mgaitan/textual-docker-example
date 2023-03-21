ARG base
FROM $base
RUN pip install textual
CMD ["python", "-m", "textual"]