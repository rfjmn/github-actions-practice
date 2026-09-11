# github-actions-practice

GitHub Actionsのイベント、ジョブ、式、キャッシュ、権限、リリースを学ぶ実験用リポジトリです。SwiftパッケージとHelloWorldアプリを含みます。

## 通常の品質確認

macOS / Xcode 26.6で、ルートから `swift Scripts/verify.swift` を実行します。対象一覧は `swift Scripts/verify.swift --list`、単体実行は `swift Scripts/verify.swift --index 0` です。`Quality` ワークフローも同じ一覧を使い、SimulatorビルドとSwiftテストを行います。

## 学習用ワークフロー

`status-check-functions.yml` は意図的な失敗、`timeout.yml` はタイムアウトを観察する例です。通常のpushで失敗しないよう、Actions画面の **Run workflow** から手動実行します。実行時は失敗終了が期待されます。

その他の教材にはpush・pull request・定期実行・リリースなどのイベントが設定されています。`Quality` とは目的が異なるため、各ファイルの `on` と `permissions` を読んでから実行してください。リリースの署名設定・Secretsは検証用ビルドには不要です。

| ファイル | ワークフロー名 |
| --- | --- |
| [add-mask.yml](.github/workflows/add-mask.yml) | Add mask |
| [annotation.yml](.github/workflows/annotation.yml) | Annotation |
| [artifacts.yml](.github/workflows/artifacts.yml) | Artifacts |
| [auto-cancel.yml](.github/workflows/auto-cancel.yml) | Auto cancel |
| [auto-merge.yml](.github/workflows/auto-merge.yml) | Auto merge |
| [auto-patch-merge.yml](.github/workflows/auto-patch-merge.yml) | Auto patch merge |
| [bash-tracing.yml](.github/workflows/bash-tracing.yml) | Bash tracing |
| [cache-swift.yml](.github/workflows/cache-swift.yml) | Cache Swift |
| [cache.yml](.github/workflows/cache.yml) | Cache Dummy |
| [change-shell.yml](.github/workflows/change-shell.yml) | Change shell |
| [compare-functions.yml](.github/workflows/compare-functions.yml) | Compare functions |
| [concurrency.yml](.github/workflows/concurrency.yml) | Concurrency |
| [conditions-workflow.yml](.github/workflows/conditions-workflow.yml) | Conditions workflow |
| [conditions.yml](.github/workflows/conditions.yml) | Conditions |
| [contexts.yml](.github/workflows/contexts.yml) | Contexts |
| [dump.yml](.github/workflows/dump.yml) | Dump |
| [environment-variables.yml](.github/workflows/environment-variables.yml) | Environment variables |
| [environments.yml](.github/workflows/environments.yml) | Environments |
| [generate-functions.yml](.github/workflows/generate-functions.yml) | Generate functions |
| [github-api-comment.yml](.github/workflows/github-api-comment.yml) | Comment |
| [github-env.yml](.github/workflows/github-env.yml) | GITHUB_ENV |
| [github-output.yml](.github/workflows/github-output.yml) | GITHUB_OUTPUT |
| [hash-functions.yml](.github/workflows/hash-functions.yml) | Hash functions |
| [hello.yml](.github/workflows/hello.yml) | Hello # ワークフロー名 |
| [intermediate-environment-variables.yml](.github/workflows/intermediate-environment-variables.yml) | Intermediate environment variables |
| [job-summaries.yml](.github/workflows/job-summaries.yml) | Job summaries |
| [json-functions.yml](.github/workflows/json-functions.yml) | JSON functions |
| [lint.yml](.github/workflows/lint.yml) | Lint |
| [literals.yml](.github/workflows/literals.yml) | Literals |
| [log-group.yml](.github/workflows/log-group.yml) | Log group |
| [manual-matrix.yml](.github/workflows/manual-matrix.yml) | Manual matrix |
| [manual.yml](.github/workflows/manual.yml) | Manual |
| [matrix.yml](.github/workflows/matrix.yml) | Matrix |
| [missing-share-data.yml](.github/workflows/missing-share-data.yml) | Missing share data |
| [multi-dimension-matrix.yml](.github/workflows/multi-dimension-matrix.yml) | Multi-dimension matrix |
| [name.yml](.github/workflows/name.yml) | Naming |
| [old.yml](.github/workflows/old.yml) | Old |
| [override-environment-variables.yml](.github/workflows/override-environment-variables.yml) | Override environment variables |
| [parallel-jobs.yml](.github/workflows/parallel-jobs.yml) | Parallel jobs |
| [quality.yml](.github/workflows/quality.yml) | Quality |
| [release.yml](.github/workflows/release.yml) | Release |
| [run-name.yml](.github/workflows/run-name.yml) | Run name |
| [schedule.yml](.github/workflows/schedule.yml) | Schedule |
| [secrets.yml](.github/workflows/secrets.yml) | Secrets |
| [sequential-jobs.yml](.github/workflows/sequential-jobs.yml) | Sequential jobs |
| [share-job-data.yml](.github/workflows/share-job-data.yml) | Share job data |
| [status-check-functions.yml](.github/workflows/status-check-functions.yml) | Status check functions |
| [test.yml](.github/workflows/test.yml) | Test |
| [timeout.yml](.github/workflows/timeout.yml) | Timeout |
| [variables.yml](.github/workflows/variables.yml) | Variables |
| [workflow-commands-debug-log.yml](.github/workflows/workflow-commands-debug-log.yml) | Debug log |
| [workflow-error.yml](.github/workflows/workflow-error.yml) | Workflow error |
| [yaml-syntax-error.yml](.github/workflows/yaml-syntax-error.yml) | YAML error |

## 振る舞いの回帰テスト

実行時の挨拶とテストする挨拶を同じ処理へ揃え、偶奇判定の引数ラベルを呼び出し時に読みやすい形へ整理します。Quality CIは実行ファイルの出力も確認します。

Swift Testingの引数付きテストでInt.min／Int.max・負数・ゼロ・正数を検証し、実行結果Hello, WorldをCIで照合します。

```sh
swift test
swift run github-actions-practice
```

## Swiftコード品質

[設計・命名・所有関係の方針と、この教材への適用範囲](SWIFT-QUALITY.md)を参照してください。
