# ChannelsAPI

All URIs are relative to *https://demo-c.cdn.vmedia.ca/json*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllChannels**](ChannelsAPI.md#getallchannels) | **GET** /Channels | Get list of Channels


# **getAllChannels**
```swift
    open class func getAllChannels(completion: @escaping (_ data: [Channel]?, _ error: Error?) -> Void)
```

Get list of Channels

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DemoTvGuideSwaggerApi


// Get list of Channels
ChannelsAPI.getAllChannels() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Channel]**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

