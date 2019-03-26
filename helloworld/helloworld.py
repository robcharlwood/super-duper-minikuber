import os
from flask import Flask

application = Flask(__name__)


@application.route("/")
def hello():
    return "<h1>Hello World!</h1><p>Load balanced pod: {}</p>".format(
        os.getenv("POD_IP", "Not Available")
    )


if __name__ == "__main__":
    application.run(host='0.0.0.0')
