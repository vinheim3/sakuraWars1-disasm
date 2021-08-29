from io import BytesIO
from flask import Flask, render_template, jsonify, send_file
from .textExtract import get_script_screens
from .util import getRom, bankAddr, wordIn


app = Flask(__name__)


@app.route('/get_script/<_id>')
def get_script(_id):
    return render_template('index.html', _id=_id)


@app.route('/api/get_script/<_id>')
def api_get_script(_id):
    data = getRom()
    # for i in range(0x322):
    #     if 0x13 <= i < 0x100:
    #         continue
    #     try:
    #         print(hex(i))
    #         srcAddr = bankAddr(0x40, 0x5728 + i * 3)

    #         bank = data[srcAddr+2]+0x41
    #         addr = wordIn(data, srcAddr)+0x4000

    #         screens = get_script_screens(bank, addr, i)
    #     except:
    #         pass

    srcAddr = bankAddr(0x40, 0x5728 + int(_id, 16) * 3)

    bank = data[srcAddr+2]+0x41
    addr = wordIn(data, srcAddr)+0x4000

    jumps = get_script_screens(bank, addr, _id)
    screens = get_script_screens(bank, addr, _id, jumps)

    return jsonify(screens)


@app.route('/rom')
def get_rom():
    data = getRom()
    return send_file(BytesIO(data), mimetype='application/octet-stream')


if __name__ == '__main__':
    # BEWARE: installing additional jinja2 filters stops the auto-reloading
    # of templates:
    # https://github.com/pallets/flask/issues/1907
    app.jinja_env.auto_reload = True
    app.config['TEMPLATES_AUTO_RELOAD'] = True
    app.run(debug=True, host='0.0.0.0', port=5000)
