# ProgramItemsAPI

All URIs are relative to *https://demo-c.cdn.vmedia.ca/json*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProgramItems**](ProgramItemsAPI.md#getprogramitems) | **GET** /ProgramItems | Get list of ProgramItems


# **getProgramItems**
```swift
    open class func getProgramItems(completion: @escaping (_ data: [ProgramItem]?, _ error: Error?) -> Void)
```

Get list of ProgramItems

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DemoTvGuideSwaggerApi


// Get list of ProgramItems
ProgramItemsAPI.getProgramItems() { (response, error) in
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

[**[ProgramItem]**](ProgramItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

