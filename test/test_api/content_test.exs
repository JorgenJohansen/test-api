defmodule TestApi.ContentTest do
  use TestApi.DataCase

  alias TestApi.Content

  describe "dashboards" do
    alias TestApi.Content.Dashboard

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def dashboard_fixture(attrs \\ %{}) do
      {:ok, dashboard} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_dashboard()

      dashboard
    end

    test "list_dashboards/0 returns all dashboards" do
      dashboard = dashboard_fixture()
      assert Content.list_dashboards() == [dashboard]
    end

    test "get_dashboard!/1 returns the dashboard with given id" do
      dashboard = dashboard_fixture()
      assert Content.get_dashboard!(dashboard.id) == dashboard
    end

    test "create_dashboard/1 with valid data creates a dashboard" do
      assert {:ok, %Dashboard{} = dashboard} = Content.create_dashboard(@valid_attrs)
    end

    test "create_dashboard/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_dashboard(@invalid_attrs)
    end

    test "update_dashboard/2 with valid data updates the dashboard" do
      dashboard = dashboard_fixture()
      assert {:ok, %Dashboard{} = dashboard} = Content.update_dashboard(dashboard, @update_attrs)
    end

    test "update_dashboard/2 with invalid data returns error changeset" do
      dashboard = dashboard_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_dashboard(dashboard, @invalid_attrs)
      assert dashboard == Content.get_dashboard!(dashboard.id)
    end

    test "delete_dashboard/1 deletes the dashboard" do
      dashboard = dashboard_fixture()
      assert {:ok, %Dashboard{}} = Content.delete_dashboard(dashboard)
      assert_raise Ecto.NoResultsError, fn -> Content.get_dashboard!(dashboard.id) end
    end

    test "change_dashboard/1 returns a dashboard changeset" do
      dashboard = dashboard_fixture()
      assert %Ecto.Changeset{} = Content.change_dashboard(dashboard)
    end
  end

  describe "notes" do
    alias TestApi.Content.Note

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def note_fixture(attrs \\ %{}) do
      {:ok, note} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_note()

      note
    end

    test "list_notes/0 returns all notes" do
      note = note_fixture()
      assert Content.list_notes() == [note]
    end

    test "get_note!/1 returns the note with given id" do
      note = note_fixture()
      assert Content.get_note!(note.id) == note
    end

    test "create_note/1 with valid data creates a note" do
      assert {:ok, %Note{} = note} = Content.create_note(@valid_attrs)
    end

    test "create_note/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_note(@invalid_attrs)
    end

    test "update_note/2 with valid data updates the note" do
      note = note_fixture()
      assert {:ok, %Note{} = note} = Content.update_note(note, @update_attrs)
    end

    test "update_note/2 with invalid data returns error changeset" do
      note = note_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_note(note, @invalid_attrs)
      assert note == Content.get_note!(note.id)
    end

    test "delete_note/1 deletes the note" do
      note = note_fixture()
      assert {:ok, %Note{}} = Content.delete_note(note)
      assert_raise Ecto.NoResultsError, fn -> Content.get_note!(note.id) end
    end

    test "change_note/1 returns a note changeset" do
      note = note_fixture()
      assert %Ecto.Changeset{} = Content.change_note(note)
    end
  end

  describe "links" do
    alias TestApi.Content.Link

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def link_fixture(attrs \\ %{}) do
      {:ok, link} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_link()

      link
    end

    test "list_links/0 returns all links" do
      link = link_fixture()
      assert Content.list_links() == [link]
    end

    test "get_link!/1 returns the link with given id" do
      link = link_fixture()
      assert Content.get_link!(link.id) == link
    end

    test "create_link/1 with valid data creates a link" do
      assert {:ok, %Link{} = link} = Content.create_link(@valid_attrs)
    end

    test "create_link/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_link(@invalid_attrs)
    end

    test "update_link/2 with valid data updates the link" do
      link = link_fixture()
      assert {:ok, %Link{} = link} = Content.update_link(link, @update_attrs)
    end

    test "update_link/2 with invalid data returns error changeset" do
      link = link_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_link(link, @invalid_attrs)
      assert link == Content.get_link!(link.id)
    end

    test "delete_link/1 deletes the link" do
      link = link_fixture()
      assert {:ok, %Link{}} = Content.delete_link(link)
      assert_raise Ecto.NoResultsError, fn -> Content.get_link!(link.id) end
    end

    test "change_link/1 returns a link changeset" do
      link = link_fixture()
      assert %Ecto.Changeset{} = Content.change_link(link)
    end
  end
end
