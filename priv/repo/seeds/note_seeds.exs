alias TestApi.Repo
alias TestApi.Content.Note

Repo.update! %Note{
  title: "Jørgen's quote",
  content: "Make it work!",
  user_id: 1,
  dashboard_id: 1
}
