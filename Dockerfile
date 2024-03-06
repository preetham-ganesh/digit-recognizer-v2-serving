# Uses TensorFlow Serving as the base image.
FROM tensorflow/serving:2.8.0

# Sets the working directory
WORKDIR /

# Copies serialized model.
COPY models/digit_recognizer/v1.0.0 /models/digit_recognizer_v1.0.0/1

# Copies configs/models.config to container.
COPY configs/models.config /models/models.config

# Copies entrypoint shell file to container.
COPY tf_serving_entrypoint.sh /usr/bin/tf_serving_entrypoint.sh

# Adds permissions to the entrypoint shell file.
RUN chmod +x /usr/bin/tf_serving_entrypoint.sh

ENTRYPOINT []

# Starts TensorFlow Serving when the container runs.
CMD ["/usr/bin/tf_serving_entrypoint.sh"]