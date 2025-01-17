# MergeHRISClient::SyncStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **model_id** | **String** |  |  |
| **last_sync_start** | **Time** |  |  |
| **next_sync_start** | **Time** |  |  |
| **status** | [**SyncStatusStatusEnum**](SyncStatusStatusEnum.md) |  |  |
| **is_initial_sync** | **Boolean** |  |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::SyncStatus.new(
  model_name: Candidate,
  model_id: ats.Candidate,
  last_sync_start: 2021-03-30T19:44:18.695973Z,
  next_sync_start: 2021-03-30T20:44:18.662942Z,
  status: SYNCING,
  is_initial_sync: true
)
```

