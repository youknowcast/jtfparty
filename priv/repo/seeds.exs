# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jtfparty.Repo.insert!(%Jtfparty.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Jtfparty.Repo
alias Jtfparty.Event
alias Jtfparty.Sessions.Session

# Events
jtf2021w = %Event{ name: "JTF2021w" }
Repo.insert!(jtf2021w)

# sample data
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "A", timebox: "13:00-13:45", time: 45,
  title: "Design Proposal は文化を創る", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "A", timebox: "13:55-14:40", time: 45,
  title: "エンジニア以外の方が自らSQLを使ってセグメント分析を行うカルチャーをどのように作っていったか", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "A", timebox: "15:10-15:55", time: 45,
  title: "機械学習基盤の本番運用とその取り組み", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "A", timebox: "16:05-16:50", time: 45,
  title: "エンプラ系大企業でソフトウェアエンジニアリング文化を開花させるために", youtube_url: "NdGN1z0q67U"
})

Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "B", timebox: "13:00-13:45", time: 45,
  title: "CTOが人事部長も兼務するとどんなカルチャーが生まれるか！？", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "B", timebox: "13:55-14:40", time: 45,
  title: "「極める、伝える、教える」の調和", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "B", timebox: "15:10-15:55", time: 45,
  title: "「エンジニア像」を言語化し文化の礎を築く", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "B", timebox: "16:05-16:50", time: 45,
  title: "エンジニアはアウトプットによって成長できるのか？", youtube_url: "NdGN1z0q67U"
})

Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "C", timebox: "13:00-13:45", time: 45,
  title: "Kubernetes on OpenStackにおけるハマりどころ", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "C", timebox: "13:55-14:40", time: 45,
  title: "「「Kubernetes による Cloud Native な開発」と「VM 時代の開発」　〜新しい技術に向き合い、前進し続けるために考えていること〜", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "C", timebox: "15:10-15:55", time: 45,
  title: "Container by default原則 -Kubernetesがまだ浸透しない日本を変える取り組み-", youtube_url: "NdGN1z0q67U"
})
Repo.insert!(%Session{
  event_id: jtf2021w.id, place: "C", timebox: "16:05-16:50", time: 45,
  title: "Cloud Native開発者のためのDatabase with Kubernetes", youtube_url: "NdGN1z0q67U"
})


