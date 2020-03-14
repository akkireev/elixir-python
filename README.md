# Elixir-Python

### Usage python from elixir with :erlport 

---

## Installation

### Download
```console
git clone https://github.com/akkireev/elixir-python.git
cd elixir-python
``` 

### Install Elixir
```console
mix deps.get
``` 

### Install Python and test qrcode
```console
cd priv/python
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt

# test should return nothing
python qrcode.py
``` 

### Run elixir
```console
foo@bar:~$ iex -S mix
iex(1)> Elpy.encode("Hello world!", "test_erl.png")
0
iex(2)> Elpy.decode("test_erl.png")
"Hello world!"
```
