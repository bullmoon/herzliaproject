from flask import Flask, render_template, url_for
app = Flask(__name__)

menu = ["Main", "About"]

@app.route("/")
def index():
    return render_template('index.html', title='Welcome!', menu=menu)

@app.route("/about")
def about():
    return render_template('about.html', title='About site')

if __name__ == "__main__":
    app.run(debug=True)