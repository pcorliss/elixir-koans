defmodule WithStatementTests do
  use ExUnit.Case
  import TestHarness

  test "With Statement" do
    answers = [
      {:multiple, [{:ok, 9}, {:error, :invalid_number}]},
      {:multiple, [{:ok, "Adult user: Alice"}, {:error, :underage}, {:error, :missing_data}]},
      {:multiple,
       [
         {:ok, 2},
         {:error, "Cannot divide by zero"},
         {:error, "Cannot take square root of negative number"}
       ]},
      {:multiple, [{:ok, "user@example.com"}, {:error, :invalid_email}, {:error, :missing_data}]},
      {:multiple,
       [{:ok, 50}, {:error, :not_positive}, {:error, :result_too_large}, {:error, :not_a_number}]},
      {:ok, %{id: 1}},
      {:multiple, [8, "5"]},
      {:multiple,
       [
         {:ok, "step3_step2_step1_valid"},
         {:error, "Failed at step 1: invalid input"},
         {:error, "Failed at step 2: processing error"}
       ]}
    ]

    test_all(WithStatement, answers)
  end
end
