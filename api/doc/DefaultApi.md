# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePetPetsIdDelete**](DefaultApi.md#deletepetpetsiddelete) | **DELETE** /pets/{id} | Delete Pet
[**deleteUserUsersIdDelete**](DefaultApi.md#deleteuserusersiddelete) | **DELETE** /users/{id} | Delete User
[**getPetPetsIdGet**](DefaultApi.md#getpetpetsidget) | **GET** /pets/{id} | Get Pet
[**getPetsPetsGet**](DefaultApi.md#getpetspetsget) | **GET** /pets/ | Get Pets
[**getUserUsersIdGet**](DefaultApi.md#getuserusersidget) | **GET** /users/{id} | Get User
[**listUsersUsersGet**](DefaultApi.md#listusersusersget) | **GET** /users/ | List Users
[**patchUserUsersIdPatch**](DefaultApi.md#patchuserusersidpatch) | **PATCH** /users/{id} | Patch User
[**postPetPetsPost**](DefaultApi.md#postpetpetspost) | **POST** /pets | Post Pet
[**postUserUsersPost**](DefaultApi.md#postuseruserspost) | **POST** /users | Post User


# **deletePetPetsIdDelete**
> Object deletePetPetsIdDelete(id)

Delete Pet

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 

try {
    final result = api_instance.deletePetPetsIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->deletePetPetsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsersIdDelete**
> Object deleteUserUsersIdDelete(id)

Delete User

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 

try {
    final result = api_instance.deleteUserUsersIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->deleteUserUsersIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPetPetsIdGet**
> PetRead getPetPetsIdGet(id)

Get Pet

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 

try {
    final result = api_instance.getPetPetsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getPetPetsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PetRead**](PetRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPetsPetsGet**
> List<PetRead> getPetsPetsGet()

Get Pets

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.getPetsPetsGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getPetsPetsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PetRead>**](PetRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsersIdGet**
> UserRead getUserUsersIdGet(id)

Get User

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 

try {
    final result = api_instance.getUserUsersIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getUserUsersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsersUsersGet**
> List<UserRead> listUsersUsersGet()

List Users

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.listUsersUsersGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listUsersUsersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserRead>**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUserUsersIdPatch**
> UserRead patchUserUsersIdPatch(id, userUpdate)

Patch User

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 
final userUpdate = UserUpdate(); // UserUpdate | 

try {
    final result = api_instance.patchUserUsersIdPatch(id, userUpdate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->patchUserUsersIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userUpdate** | [**UserUpdate**](UserUpdate.md)|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPetPetsPost**
> PetRead postPetPetsPost(petCreate)

Post Pet

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final petCreate = PetCreate(); // PetCreate | 

try {
    final result = api_instance.postPetPetsPost(petCreate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->postPetPetsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petCreate** | [**PetCreate**](PetCreate.md)|  | 

### Return type

[**PetRead**](PetRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUserUsersPost**
> UserRead postUserUsersPost(userCreate)

Post User

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final userCreate = UserCreate(); // UserCreate | 

try {
    final result = api_instance.postUserUsersPost(userCreate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->postUserUsersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreate** | [**UserCreate**](UserCreate.md)|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

