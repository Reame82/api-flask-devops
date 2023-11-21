from flask import Flask, jsonify
import os 

app = Flask(__name__)
port = int(os.environ.get("PORT", 5000))

@app.route('/mentoria',methods=['GET'])
def mentoria():
    dados = {
        'nome': 'Fulano de Tal',
        'tema': 'Mentoria'
    }

    return jsonify(dados)

@app.route('/',methods=['GET'])
def start():
    dados = {
        'message': 'Iniciando projeto da mentoria'

    }
    return jsonify(dados)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=port)



