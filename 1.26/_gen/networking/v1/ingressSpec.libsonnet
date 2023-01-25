{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='ingressSpec', url='', help='"IngressSpec describes the Ingress the user wishes to exist."'),
  '#defaultBackend':: d.obj(help='"IngressBackend describes all endpoints for a given service and port."'),
  defaultBackend: {
    '#resource':: d.obj(help='"TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace."'),
    resource: {
      '#withApiGroup':: d.fn(help='"APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."', args=[d.arg(name='apiGroup', type=d.T.string)]),
      withApiGroup(apiGroup): { defaultBackend+: { resource+: { apiGroup: apiGroup } } },
      '#withKind':: d.fn(help='"Kind is the type of resource being referenced"', args=[d.arg(name='kind', type=d.T.string)]),
      withKind(kind): { defaultBackend+: { resource+: { kind: kind } } },
      '#withName':: d.fn(help='"Name is the name of resource being referenced"', args=[d.arg(name='name', type=d.T.string)]),
      withName(name): { defaultBackend+: { resource+: { name: name } } },
    },
    '#service':: d.obj(help='"IngressServiceBackend references a Kubernetes Service as a Backend."'),
    service: {
      '#port':: d.obj(help='"ServiceBackendPort is the service port being referenced."'),
      port: {
        '#withName':: d.fn(help='"Name is the name of the port on the Service. This is a mutually exclusive setting with \\"Number\\"."', args=[d.arg(name='name', type=d.T.string)]),
        withName(name): { defaultBackend+: { service+: { port+: { name: name } } } },
        '#withNumber':: d.fn(help='"Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \\"Name\\"."', args=[d.arg(name='number', type=d.T.integer)]),
        withNumber(number): { defaultBackend+: { service+: { port+: { number: number } } } },
      },
      '#withName':: d.fn(help='"Name is the referenced service. The service must exist in the same namespace as the Ingress object."', args=[d.arg(name='name', type=d.T.string)]),
      withName(name): { defaultBackend+: { service+: { name: name } } },
    },
  },
  '#withIngressClassName':: d.fn(help='"IngressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present."', args=[d.arg(name='ingressClassName', type=d.T.string)]),
  withIngressClassName(ingressClassName): { ingressClassName: ingressClassName },
  '#withRules':: d.fn(help='"A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."', args=[d.arg(name='rules', type=d.T.array)]),
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  '#withRulesMixin':: d.fn(help='"A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='rules', type=d.T.array)]),
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  '#withTls':: d.fn(help='"TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."', args=[d.arg(name='tls', type=d.T.array)]),
  withTls(tls): { tls: if std.isArray(v=tls) then tls else [tls] },
  '#withTlsMixin':: d.fn(help='"TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='tls', type=d.T.array)]),
  withTlsMixin(tls): { tls+: if std.isArray(v=tls) then tls else [tls] },
  '#mixin': 'ignore',
  mixin: self,
}
