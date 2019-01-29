defmodule Skillset.Knowledge do
  @moduledoc """
  The Knowledge context.
  """

  import Ecto.Query, warn: false
  alias Skillset.Repo

  alias Skillset.Knowledge.Insight
  alias Skillset.Knowledge.Interest

  @doc """
  Returns the list of interests.

  ## Examples

      iex> list_interests()
      [%Interest{}, ...]

  """
  def list_interests do
    Repo.all(Interest)
  end

  @doc """
  Gets a single interest.

  Raises `Ecto.NoResultsError` if the Interest does not exist.

  ## Examples

      iex> get_interest!(123)
      %Interest{}

      iex> get_interest!(456)
      ** (Ecto.NoResultsError)

  """
  def get_interest!(id), do: Repo.get!(Interest, id)

  @doc """
  Creates a interest.

  ## Examples

      iex> create_interest(%{field: value})
      {:ok, %Interest{}}

      iex> create_interest(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_interest(attrs \\ %{}) do
    %Interest{}
    |> Interest.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a interest.

  ## Examples

      iex> update_interest(interest, %{field: new_value})
      {:ok, %Interest{}}

      iex> update_interest(interest, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_interest(%Interest{} = interest, attrs) do
    interest
    |> Interest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Interest.

  ## Examples

      iex> delete_interest(interest)
      {:ok, %Interest{}}

      iex> delete_interest(interest)
      {:error, %Ecto.Changeset{}}

  """
  def delete_interest(%Interest{} = interest) do
    Repo.delete(interest)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking interest changes.

  ## Examples

      iex> change_interest(interest)
      %Ecto.Changeset{source: %Interest{}}

  """
  def change_interest(%Interest{} = interest) do
    Interest.changeset(interest, %{})
  end

  @doc """
  Returns the list of insights.

  ## Examples

      iex> list_insights()
      [%Insight{}, ...]

  """
  def list_insights do
    Repo.all(Insight)
  end

  @doc """
  Gets a single insight.

  Raises `Ecto.NoResultsError` if the Insight does not exist.

  ## Examples

      iex> get_insight!(123)
      %Insight{}

      iex> get_insight!(456)
      ** (Ecto.NoResultsError)

  """
  def get_insight!(id), do: Repo.get!(Insight, id)

  @doc """
  Creates a insight.

  ## Examples

      iex> create_insight(%{field: value})
      {:ok, %Insight{}}

      iex> create_insight(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_insight(attrs \\ %{}) do
    %Insight{}
    |> Insight.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a insight.

  ## Examples

      iex> update_insight(insight, %{field: new_value})
      {:ok, %Insight{}}

      iex> update_insight(insight, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_insight(%Insight{} = insight, attrs) do
    insight
    |> Insight.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Insight.

  ## Examples

      iex> delete_insight(insight)
      {:ok, %Insight{}}

      iex> delete_insight(insight)
      {:error, %Ecto.Changeset{}}

  """
  def delete_insight(%Insight{} = insight) do
    Repo.delete(insight)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking insight changes.

  ## Examples

      iex> change_insight(insight)
      %Ecto.Changeset{source: %Insight{}}

  """
  def change_insight(%Insight{} = insight) do
    Insight.changeset(insight, %{})
  end
end
