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
  def askForNames(names) do
    name = IO.gets("")
    name = String.trim(name)

    if String.length(name) > 0 do
      askForNames(names ++ [name])
    else
      names
    end
  end

  def printNames(names) do

    counter = %{}

    Enum.reduce(names, counter, fn name, counter ->
      updated_counter = Map.update(counter, name, 1, &(&1 + 1))

      IO.puts("#{name} #{RomanNumberConverter.get_roman_num(Map.get(updated_counter, name))}")

      updated_counter
    end)
  end

  def main(_args) do
    IO.puts(
      "RomanCLIApp é uma ferramenta de linha de comando que restaura e organiza os registros históricos da família real de Cumbúquia\n\nDigite abaixo os nomes dos membros da familia real, quando terminar digite uma linha em branco:\n"
    )

    names = askForNames([])

    printNames(names)
  end
end
