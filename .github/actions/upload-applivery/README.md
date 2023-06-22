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
      testers-groups: 'internal,beta'
      tags: 'production,english'
      release-notes: 'some bug fixes'
      notifyCollaborators: true
```
