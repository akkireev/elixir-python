def decode(file_path):
    from pyzbar.pyzbar import decode, ZBarSymbol
    from PIL import Image
    try:
        qr_codes = decode(Image.open(file_path), symbols=[ZBarSymbol.QRCODE])
        return qr_codes[0].data
    except (IndexError, FileNotFoundError):
        return None

def encode(data, file_path):
    import pyqrcode
    code = pyqrcode.create(data)
    try:
        code.png(file_path, scale=6, module_color=[0, 0, 0, 128])
        return 0
    except FileNotFoundError:
        return 1
    
if __name__ == "__main__":
    import os
    
    assert encode("Hello world!", "test.png") == 0
    assert encode("Hello world!", "foo/test.png") == 1

    assert decode("foo/test.png") == None
    assert decode("test.png") == b'Hello world!'

    os.remove("test.png")
