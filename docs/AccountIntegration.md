# MergeHRISClient::AccountIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name. |  |
| **categories** | **Array&lt;String&gt;** | Category or categories this integration belongs to. | [optional] |
| **image** | **String** | Company logo in rectangular shape. | [optional] |
| **square_image** | **String** | Company logo in square shape. | [optional] |
| **color** | **String** | The color of this integration used for buttons and text throughout the app and landing pages. | [optional] |
| **slug** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::AccountIntegration.new(
  name: null,
  categories: null,
  image: null,
  square_image: null,
  color: null,
  slug: null
)
```

