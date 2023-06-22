# Upload to Applivery

Uploads application builds to [Applivery](https://dashboard.applivery.io/).

## Usage Example:

```yaml
steps:
  # build the application
  # ...

  - name: Upload to Applivery
    uses: ./click-apps-monorepo/.github/actions/upload-applivery
    with:
      api-key: ${{ env.APPLIVERY_API_KEY }}
      app-file: ${{ env.ARTIFACT_PATH }}
      tags: 'production,english'
      changelog: '05_08_23 PR 2707 Commit fd51f5b v0.1.0 Alpha KDV13'
      NOTIFY: true
```
