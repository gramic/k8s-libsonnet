---
permalink: /1.15/apiregistration/v1beta1/apiService/
---

# apiregistration.v1beta1.apiService

APIService represents a server for a particular GroupVersion. Name must be "version.group".

## Index

* [`fn new(name)`](#fn-new)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(annotations)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(annotations)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(clusterName)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(creationTimestamp)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(deletionTimestamp)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(finalizers)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(finalizers)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(generateName)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(generation)`](#fn-metadatawithgeneration)
  * [`fn withLabels(labels)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(labels)`](#fn-metadatawithlabelsmixin)
  * [`fn withManagedFields(managedFields)`](#fn-metadatawithmanagedfields)
  * [`fn withManagedFieldsMixin(managedFields)`](#fn-metadatawithmanagedfieldsmixin)
  * [`fn withName(name)`](#fn-metadatawithname)
  * [`fn withNamespace(namespace)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(ownerReferences)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(ownerReferences)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(resourceVersion)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(selfLink)`](#fn-metadatawithselflink)
  * [`fn withUid(uid)`](#fn-metadatawithuid)
  * [`obj metadata.initializers`](#obj-metadatainitializers)
    * [`fn withPending(pending)`](#fn-metadatainitializerswithpending)
    * [`fn withPendingMixin(pending)`](#fn-metadatainitializerswithpendingmixin)
    * [`obj metadata.initializers.result`](#obj-metadatainitializersresult)
      * [`fn withApiVersion(apiVersion)`](#fn-metadatainitializersresultwithapiversion)
      * [`fn withCode(code)`](#fn-metadatainitializersresultwithcode)
      * [`fn withKind(kind)`](#fn-metadatainitializersresultwithkind)
      * [`fn withMessage(message)`](#fn-metadatainitializersresultwithmessage)
      * [`fn withMetadata(metadata)`](#fn-metadatainitializersresultwithmetadata)
      * [`fn withReason(reason)`](#fn-metadatainitializersresultwithreason)
      * [`obj metadata.initializers.result.details`](#obj-metadatainitializersresultdetails)
        * [`fn withCauses(causes)`](#fn-metadatainitializersresultdetailswithcauses)
        * [`fn withCausesMixin(causes)`](#fn-metadatainitializersresultdetailswithcausesmixin)
        * [`fn withGroup(group)`](#fn-metadatainitializersresultdetailswithgroup)
        * [`fn withKind(kind)`](#fn-metadatainitializersresultdetailswithkind)
        * [`fn withName(name)`](#fn-metadatainitializersresultdetailswithname)
        * [`fn withRetryAfterSeconds(retryAfterSeconds)`](#fn-metadatainitializersresultdetailswithretryafterseconds)
        * [`fn withUid(uid)`](#fn-metadatainitializersresultdetailswithuid)
* [`obj spec`](#obj-spec)
  * [`fn withCaBundle(caBundle)`](#fn-specwithcabundle)
  * [`fn withGroup(group)`](#fn-specwithgroup)
  * [`fn withGroupPriorityMinimum(groupPriorityMinimum)`](#fn-specwithgrouppriorityminimum)
  * [`fn withInsecureSkipTLSVerify(insecureSkipTLSVerify)`](#fn-specwithinsecureskiptlsverify)
  * [`fn withVersion(version)`](#fn-specwithversion)
  * [`fn withVersionPriority(versionPriority)`](#fn-specwithversionpriority)
  * [`obj spec.service`](#obj-specservice)
    * [`fn withName(name)`](#fn-specservicewithname)
    * [`fn withNamespace(namespace)`](#fn-specservicewithnamespace)
    * [`fn withPort(port)`](#fn-specservicewithport)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of Apiservice

## obj metadata

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.

### fn metadata.withAnnotations

```ts
withAnnotations(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

### fn metadata.withAnnotationsMixin

```ts
withAnnotationsMixin(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

**Note:** This function appends passed data to existing values

### fn metadata.withClusterName

```ts
withClusterName(clusterName)
```

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.

### fn metadata.withCreationTimestamp

```ts
withCreationTimestamp(creationTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn metadata.withDeletionGracePeriodSeconds

```ts
withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)
```

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.

### fn metadata.withDeletionTimestamp

```ts
withDeletionTimestamp(deletionTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn metadata.withFinalizers

```ts
withFinalizers(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.

### fn metadata.withFinalizersMixin

```ts
withFinalizersMixin(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.

**Note:** This function appends passed data to existing values

### fn metadata.withGenerateName

```ts
withGenerateName(generateName)
```

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency

### fn metadata.withGeneration

```ts
withGeneration(generation)
```

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.

### fn metadata.withLabels

```ts
withLabels(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

### fn metadata.withLabelsMixin

```ts
withLabelsMixin(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

**Note:** This function appends passed data to existing values

### fn metadata.withManagedFields

```ts
withManagedFields(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

This field is alpha and can be changed or removed without notice.

### fn metadata.withManagedFieldsMixin

```ts
withManagedFieldsMixin(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

This field is alpha and can be changed or removed without notice.

**Note:** This function appends passed data to existing values

### fn metadata.withName

```ts
withName(name)
```

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names

### fn metadata.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces

### fn metadata.withOwnerReferences

```ts
withOwnerReferences(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

### fn metadata.withOwnerReferencesMixin

```ts
withOwnerReferencesMixin(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

**Note:** This function appends passed data to existing values

### fn metadata.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency

### fn metadata.withSelfLink

```ts
withSelfLink(selfLink)
```

SelfLink is a URL representing this object. Populated by the system. Read-only.

### fn metadata.withUid

```ts
withUid(uid)
```

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids

## obj metadata.initializers

Initializers tracks the progress of initialization.

### fn metadata.initializers.withPending

```ts
withPending(pending)
```

Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.

### fn metadata.initializers.withPendingMixin

```ts
withPendingMixin(pending)
```

Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.

**Note:** This function appends passed data to existing values

## obj metadata.initializers.result

Status is a return value for calls that don't return other objects.

### fn metadata.initializers.result.withApiVersion

```ts
withApiVersion(apiVersion)
```

APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources

### fn metadata.initializers.result.withCode

```ts
withCode(code)
```

Suggested HTTP return code for this status, 0 if not set.

### fn metadata.initializers.result.withKind

```ts
withKind(kind)
```

Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds

### fn metadata.initializers.result.withMessage

```ts
withMessage(message)
```

A human-readable description of the status of this operation.

### fn metadata.initializers.result.withMetadata

```ts
withMetadata(metadata)
```

Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds

### fn metadata.initializers.result.withReason

```ts
withReason(reason)
```

A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.

## obj metadata.initializers.result.details

StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.

### fn metadata.initializers.result.details.withCauses

```ts
withCauses(causes)
```

The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.

### fn metadata.initializers.result.details.withCausesMixin

```ts
withCausesMixin(causes)
```

The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.

**Note:** This function appends passed data to existing values

### fn metadata.initializers.result.details.withGroup

```ts
withGroup(group)
```

The group attribute of the resource associated with the status StatusReason.

### fn metadata.initializers.result.details.withKind

```ts
withKind(kind)
```

The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds

### fn metadata.initializers.result.details.withName

```ts
withName(name)
```

The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).

### fn metadata.initializers.result.details.withRetryAfterSeconds

```ts
withRetryAfterSeconds(retryAfterSeconds)
```

If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.

### fn metadata.initializers.result.details.withUid

```ts
withUid(uid)
```

UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids

## obj spec

APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.

### fn spec.withCaBundle

```ts
withCaBundle(caBundle)
```

CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.

### fn spec.withGroup

```ts
withGroup(group)
```

Group is the API group name this server hosts

### fn spec.withGroupPriorityMinimum

```ts
withGroupPriorityMinimum(groupPriorityMinimum)
```

GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s

### fn spec.withInsecureSkipTLSVerify

```ts
withInsecureSkipTLSVerify(insecureSkipTLSVerify)
```

InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.

### fn spec.withVersion

```ts
withVersion(version)
```

Version is the API version this server hosts.  For example, "v1"

### fn spec.withVersionPriority

```ts
withVersionPriority(versionPriority)
```

VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is 'kube-like', it will sort above non 'kube-like' version strings, which are ordered lexicographically. 'Kube-like' versions start with a 'v', then are followed by a number (the major version), then optionally the string 'alpha' or 'beta' and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.

## obj spec.service

ServiceReference holds a reference to Service.legacy.k8s.io

### fn spec.service.withName

```ts
withName(name)
```

Name is the name of the service

### fn spec.service.withNamespace

```ts
withNamespace(namespace)
```

Namespace is the namespace of the service

### fn spec.service.withPort

```ts
withPort(port)
```

If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).