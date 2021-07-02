{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='serviceSpec', url='', help='ServiceSpec describes the attributes that a user creates on a service.'),
  '#sessionAffinityConfig':: d.obj(help='SessionAffinityConfig represents the configurations of session affinity.'),
  sessionAffinityConfig: {
    '#clientIP':: d.obj(help='ClientIPConfig represents the configurations of Client IP based session affinity.'),
    clientIP: {
      '#withTimeoutSeconds':: d.fn(help='timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).', args=[d.arg(name='timeoutSeconds', type=d.T.integer)]),
      withTimeoutSeconds(timeoutSeconds): { sessionAffinityConfig+: { clientIP+: { timeoutSeconds: timeoutSeconds } } },
    },
  },
  '#withClusterIP':: d.fn(help='clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are "None", empty string (""), or a valid IP address. "None" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies', args=[d.arg(name='clusterIP', type=d.T.string)]),
  withClusterIP(clusterIP): { clusterIP: clusterIP },
  '#withExternalIPs':: d.fn(help='externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.', args=[d.arg(name='externalIPs', type=d.T.array)]),
  withExternalIPs(externalIPs): { externalIPs: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] },
  '#withExternalIPsMixin':: d.fn(help='externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='externalIPs', type=d.T.array)]),
  withExternalIPsMixin(externalIPs): { externalIPs+: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] },
  '#withExternalName':: d.fn(help='externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname (https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.', args=[d.arg(name='externalName', type=d.T.string)]),
  withExternalName(externalName): { externalName: externalName },
  '#withExternalTrafficPolicy':: d.fn(help='externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.', args=[d.arg(name='externalTrafficPolicy', type=d.T.string)]),
  withExternalTrafficPolicy(externalTrafficPolicy): { externalTrafficPolicy: externalTrafficPolicy },
  '#withHealthCheckNodePort':: d.fn(help='healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.', args=[d.arg(name='healthCheckNodePort', type=d.T.integer)]),
  withHealthCheckNodePort(healthCheckNodePort): { healthCheckNodePort: healthCheckNodePort },
  '#withLoadBalancerIP':: d.fn(help='Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.', args=[d.arg(name='loadBalancerIP', type=d.T.string)]),
  withLoadBalancerIP(loadBalancerIP): { loadBalancerIP: loadBalancerIP },
  '#withLoadBalancerSourceRanges':: d.fn(help='If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/', args=[d.arg(name='loadBalancerSourceRanges', type=d.T.array)]),
  withLoadBalancerSourceRanges(loadBalancerSourceRanges): { loadBalancerSourceRanges: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] },
  '#withLoadBalancerSourceRangesMixin':: d.fn(help='If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='loadBalancerSourceRanges', type=d.T.array)]),
  withLoadBalancerSourceRangesMixin(loadBalancerSourceRanges): { loadBalancerSourceRanges+: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] },
  '#withPorts':: d.fn(help='The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies', args=[d.arg(name='ports', type=d.T.array)]),
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  '#withPortsMixin':: d.fn(help='The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ports', type=d.T.array)]),
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  '#withPublishNotReadyAddresses':: d.fn(help="publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.", args=[d.arg(name='publishNotReadyAddresses', type=d.T.boolean)]),
  withPublishNotReadyAddresses(publishNotReadyAddresses): { publishNotReadyAddresses: publishNotReadyAddresses },
  '#withSelector':: d.fn(help='Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/', args=[d.arg(name='selector', type=d.T.object)]),
  withSelector(selector): { selector: selector },
  '#withSelectorMixin':: d.fn(help='Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='selector', type=d.T.object)]),
  withSelectorMixin(selector): { selector+: selector },
  '#withSessionAffinity':: d.fn(help='Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies', args=[d.arg(name='sessionAffinity', type=d.T.string)]),
  withSessionAffinity(sessionAffinity): { sessionAffinity: sessionAffinity },
  '#withType':: d.fn(help='type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types', args=[d.arg(name='type', type=d.T.string)]),
  withType(type): { type: type },
  '#mixin': 'ignore',
  mixin: self,
}
