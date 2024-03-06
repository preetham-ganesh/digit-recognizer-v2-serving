# Digit Recognizer v2 (Serving)

This repository contains trained & serialized models used in the Digit Recognizer project. The models are optimized for serving and deployment with [TensorFlow Serving](https://www.tensorflow.org/tfx/guide/serving) & [Docker](https://www.docker.com).

## Contents

- [Installation](https://github.com/preetham-ganesh/digit-recognizer-v2-serving#installation)
- [Usage](https://github.com/preetham-ganesh/digit-recognizer-v2-serving#usage)
- [Releases](https://github.com/preetham-ganesh/digit-recognizer-v2-serving#releases)
- [Models Information](https://github.com/preetham-ganesh/digit-recognizer-v2-serving#models-information)

## Installation

```bash
git clone https://github.com/preetham-ganesh/digit-recognizer-v2-serving
cd digit-recognizer-v2-serving
```

## Usage

Requires: [Docker](https://www.docker.com)

Use the following code snippet to deploy the docker container locally:

```bash
docker build -t digit-recognizer-v2-serving .
docker run -p 8500:8500 -p 8501:8501 digit-recognizer-v2-serving
```
