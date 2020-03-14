defmodule Elpy.PythonProvider do
  def python_instance(interpreter_path, modules_path)
      when (is_binary(interpreter_path) or is_list(interpreter_path)) and
             (is_binary(modules_path) or is_list(modules_path)) do
    {:ok, pid} =
      :python.start([
        {:python, to_charlist(interpreter_path)},
        {:python_path, to_charlist(modules_path)}
      ])

    pid
  end

  def python_instance(_) do
    {:ok, pid} = :python.start()
    pid
  end

  def call_python(pid, module, function, arguments \\ []) do
    pid
    |> :python.call(module, function, arguments)
  end
end
