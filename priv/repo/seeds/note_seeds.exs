alias TestApi.Repo
alias TestApi.Content.Note

Repo.insert! %Note{
  title: "Jørgen's quote",
  content: "Jeg har ikke peiling på hva jeg holder på med!",
  user_id: 1,
  dashboard_id: 1
}

Repo.insert! %Note{
  title: "Robotman's quote",
  content: "I'm not a sophisticated kind of guy. I couldn't think of one clever way to stop this guy, so I just trusted to mindless violence.",
  user_id: 2,
  dashboard_id: 2
}
Repo.insert! %Note{
  title: "Geralt's quote",
  content: "...if I'm to choose between one evil and another, then I prefer not to choose at all.",
  user_id: 3,
  dashboard_id: 3
}
