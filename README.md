# Elpy
### Example of usage python from elixir with :erlport 

---

## Installation
### Download
git clone 
cd elpy

### Install elixir
```console
mix deps.get
``` 

### Install python and test
```console
cd priv/python
virtualenv -p python3
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
