defmodule RomanCliApp do
  @moduledoc """
  Documentation for `RomanCliApp`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RomanCliApp.hello()
      :world

  """
  def askForName(counter) do
    name = IO.gets("")
    name = String.trim(name)

    if String.length(name) > 0 do
      askForName(Map.update(counter, name, 1, &(&1 + 1)))
    else
      counter
    end
  end

  def main(_args) do
    IO.puts("RomanCLIApp é uma ferramenta de linha de comando que restaura e organiza os registros históricos da família real de Cumbúquia\nDigite abaixo os nomes dos membros da familia real, quando terminar digite uma linha em branco:")

    counter = askForName(%{})

    counter_keys = Map.keys(counter)

    for key <- counter_keys,
        do: IO.puts("#{key} #{RomanNumberConverter.get_roman_num(Map.get(counter, key))}")
  end
end
