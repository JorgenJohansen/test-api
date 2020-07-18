alias TestApi.Repo
alias TestApi.Content.Dashboard

Repo.insert! %Dashboard{
  title: "Jorgen's dashboard",
  user_id: 1
}

Repo.insert! %Dashboard{
  title: "Cliff's dashboard",
  user_id: 2
}
Repo.insert! %Dashboard{
  title: "Geralt's dashboard",
  user_id: 3
}
