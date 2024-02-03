
import cv2

from flask import Flask,request,jsonify,make_response
from flask_cors import CORS

import mysql.connector

app = Flask(__name__)
CORS(app)
app.secret_key = 'acart'
host = "localhost"
user = "root"
db = "table_status"
UPLOAD_FOLDER = '/uploads'
ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


@app.route("/")
def index():
    return "Hello world"

@app.route("/allzone") 
def allzone():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zonea") 
def zonea():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='a'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zoneb") 
def zoneb():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='b'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zonec") 
def zonec():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='c'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zoned") 
def zoned():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='d'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zonef") 
def zonef():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='f'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)

@app.route("/zoneg") 
def zoneg():
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM tablestatus WHERE zone ='g'")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult),200)


@app.route('/upload', methods=['POST'])
def upload_file():
    result = ""
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    if 'file' not in request.files:
        return jsonify({'error': 'No file part'})
    file = request.files['file']
    imageFile = file.filename
    if file.filename == '':
        return jsonify({'error': 'No selected file'})
    if file:
        file.save('uploads/' + file.filename)
        image1 = cv2.imread('uploads/prototype.jpg')
        image2 = cv2.imread(f'uploads/{file.filename}')
        width, height = 500, 500
        image1 = cv2.resize(image1, (width, height))
        image2 = cv2.resize(image2, (width, height))
        orb = cv2.ORB_create()
        kp1, des1 = orb.detectAndCompute(image1, None)
        kp2, des2 = orb.detectAndCompute(image2, None)
        bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
        matches = bf.match(des1, des2)
        similarity_score = len(matches) / len(kp1)
        print(f"{similarity_score}")
        if similarity_score > 0.5:
            result = "success"
            imageFile = imageFile.split(".")
            query = "UPDATE tablestatus SET  status = %s WHERE id = %s"
            print(imageFile[0])
            mycursor.execute(query, ("false",imageFile[0]))
            conn.commit()
        else:
            result = "fail"
        print(result)
        return result;
        

        

@app.route('/start', methods=['PUT'])
def started():
    data = request.json
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    id = data.get('id')
    query = "UPDATE tablestatus SET status = %s WHERE id = %s"
    mycursor.execute(query, ("true",id  ))
    conn.commit()
    return jsonify({'message':"add device success"})

@app.route('/stop', methods=['PUT'])
def stoped():
    data = request.json
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    id = data.get('id')
    query = "UPDATE tablestatus SET status = %s WHERE id = %s"
    mycursor.execute(query, ("empt",id  ))
    conn.commit()
    return jsonify({'message':"stop device success"})


@app.route('/notempt', methods=['PUT'])
def notempt():
    data = request.json
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    id = data.get('id')
    query = "UPDATE tablestatus SET status = %s WHERE id = %s"
    mycursor.execute(query, ("true",id  ))
    conn.commit()
    return "success"

@app.route('/count/<string:zone>', methods=['GET'])
def countzone(zone):
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    if zone == 'all':
        query = f"SELECT COUNT(id) as counter  FROM tablestatus WHERE status = 'false'"
    else:
        query = f"SELECT COUNT(id) as counter  FROM tablestatus WHERE zone = '{zone}' AND status = 'false'"
    mycursor.execute(query)
    myresult = mycursor.fetchone()
    return jsonify(myresult)

@app.route('/allcount/<string:zone>', methods=['GET'])
def countallzone(zone):
    conn = mysql.connector.connect(host=host,user=user,password="",db=db)
    mycursor = conn.cursor(dictionary=True)
    if zone == 'all':
        query = f"SELECT COUNT(id) as counter  FROM tablestatus "
    else:
        query = f"SELECT COUNT(id) as counter  FROM tablestatus WHERE zone = '{zone}'"
    mycursor.execute(query)
    myresult = mycursor.fetchone()
    return jsonify(myresult)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000,debug=True)