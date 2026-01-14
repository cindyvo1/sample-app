<<<<<<< HEAD
=======
# Add to this file for the sample app lab
>>>>>>> 7d0d18b60c842c9d1d910e7a6cae32415100f533
from flask import Flask
from flask import request
from flask import render_template

sample = Flask(__name__)

@sample.route("/")
def main():
    return render_template("index.html")

if __name__ == "__main__":
<<<<<<< HEAD
    sample.run(host="0.0.0.0", port=5050, threaded=False)
=======
    sample.run(host="0.0.0.0", port=5050)
>>>>>>> 7d0d18b60c842c9d1d910e7a6cae32415100f533
