defmodule Elpy do
  alias Elpy.PythonProvider

  def encode(data, file_path) do
    call_python(:qrcode, :encode, [data, file_path])
  end

  def decode(file_path) do
    call_python(:qrcode, :decode, [file_path])
  end

  defp default_instance do
    modules_path = [:code.priv_dir(:elpy), "python"] |> Path.join()
    interpreter_path = [modules_path, "venv/bin/python3"] |> Path.join()

    PythonProvider.python_instance(interpreter_path, modules_path)
  end

  defp call_python(module, function, args \\ []) do
    default_instance()
    |> PythonProvider.call_python(module, function, args)
  end
end
