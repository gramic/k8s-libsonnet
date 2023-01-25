{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='validatingAdmissionPolicySpec', url='', help='"ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy."'),
  '#matchConstraints':: d.obj(help='"MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)"'),
  matchConstraints: {
    '#namespaceSelector':: d.obj(help='"A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects."'),
    namespaceSelector: {
      '#withMatchExpressions':: d.fn(help='"matchExpressions is a list of label selector requirements. The requirements are ANDed."', args=[d.arg(name='matchExpressions', type=d.T.array)]),
      withMatchExpressions(matchExpressions): { matchConstraints+: { namespaceSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      '#withMatchExpressionsMixin':: d.fn(help='"matchExpressions is a list of label selector requirements. The requirements are ANDed."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='matchExpressions', type=d.T.array)]),
      withMatchExpressionsMixin(matchExpressions): { matchConstraints+: { namespaceSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      '#withMatchLabels':: d.fn(help='"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \\"key\\", the operator is \\"In\\", and the values array contains only \\"value\\". The requirements are ANDed."', args=[d.arg(name='matchLabels', type=d.T.object)]),
      withMatchLabels(matchLabels): { matchConstraints+: { namespaceSelector+: { matchLabels: matchLabels } } },
      '#withMatchLabelsMixin':: d.fn(help='"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \\"key\\", the operator is \\"In\\", and the values array contains only \\"value\\". The requirements are ANDed."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='matchLabels', type=d.T.object)]),
      withMatchLabelsMixin(matchLabels): { matchConstraints+: { namespaceSelector+: { matchLabels+: matchLabels } } },
    },
    '#objectSelector':: d.obj(help='"A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects."'),
    objectSelector: {
      '#withMatchExpressions':: d.fn(help='"matchExpressions is a list of label selector requirements. The requirements are ANDed."', args=[d.arg(name='matchExpressions', type=d.T.array)]),
      withMatchExpressions(matchExpressions): { matchConstraints+: { objectSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      '#withMatchExpressionsMixin':: d.fn(help='"matchExpressions is a list of label selector requirements. The requirements are ANDed."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='matchExpressions', type=d.T.array)]),
      withMatchExpressionsMixin(matchExpressions): { matchConstraints+: { objectSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      '#withMatchLabels':: d.fn(help='"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \\"key\\", the operator is \\"In\\", and the values array contains only \\"value\\". The requirements are ANDed."', args=[d.arg(name='matchLabels', type=d.T.object)]),
      withMatchLabels(matchLabels): { matchConstraints+: { objectSelector+: { matchLabels: matchLabels } } },
      '#withMatchLabelsMixin':: d.fn(help='"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \\"key\\", the operator is \\"In\\", and the values array contains only \\"value\\". The requirements are ANDed."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='matchLabels', type=d.T.object)]),
      withMatchLabelsMixin(matchLabels): { matchConstraints+: { objectSelector+: { matchLabels+: matchLabels } } },
    },
    '#withExcludeResourceRules':: d.fn(help='"ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)"', args=[d.arg(name='excludeResourceRules', type=d.T.array)]),
    withExcludeResourceRules(excludeResourceRules): { matchConstraints+: { excludeResourceRules: if std.isArray(v=excludeResourceRules) then excludeResourceRules else [excludeResourceRules] } },
    '#withExcludeResourceRulesMixin':: d.fn(help='"ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='excludeResourceRules', type=d.T.array)]),
    withExcludeResourceRulesMixin(excludeResourceRules): { matchConstraints+: { excludeResourceRules+: if std.isArray(v=excludeResourceRules) then excludeResourceRules else [excludeResourceRules] } },
    '#withMatchPolicy':: d.fn(help='"matchPolicy defines how the \\"MatchResources\\" list is used to match incoming requests. Allowed values are \\"Exact\\" or \\"Equivalent\\".\\n\\n- Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \\"rules\\" only included `apiGroups:[\\"apps\\"], apiVersions:[\\"v1\\"], resources: [\\"deployments\\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.\\n\\n- Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \\"rules\\" only included `apiGroups:[\\"apps\\"], apiVersions:[\\"v1\\"], resources: [\\"deployments\\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.\\n\\nDefaults to \\"Equivalent\\', args=[d.arg(name='matchPolicy', type=d.T.string)]),
    withMatchPolicy(matchPolicy): { matchConstraints+: { matchPolicy: matchPolicy } },
    '#withResourceRules':: d.fn(help='"ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule."', args=[d.arg(name='resourceRules', type=d.T.array)]),
    withResourceRules(resourceRules): { matchConstraints+: { resourceRules: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] } },
    '#withResourceRulesMixin':: d.fn(help='"ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='resourceRules', type=d.T.array)]),
    withResourceRulesMixin(resourceRules): { matchConstraints+: { resourceRules+: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] } },
  },
  '#paramKind':: d.obj(help='"ParamKind is a tuple of Group Kind and Version."'),
  paramKind: {
    '#withApiVersion':: d.fn(help='"APIVersion is the API group version the resources belong to. In format of \\"group/version\\". Required."', args=[d.arg(name='apiVersion', type=d.T.string)]),
    withApiVersion(apiVersion): { paramKind+: { apiVersion: apiVersion } },
    '#withKind':: d.fn(help='"Kind is the API kind the resources belong to. Required."', args=[d.arg(name='kind', type=d.T.string)]),
    withKind(kind): { paramKind+: { kind: kind } },
  },
  '#withFailurePolicy':: d.fn(help='"FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail."', args=[d.arg(name='failurePolicy', type=d.T.string)]),
  withFailurePolicy(failurePolicy): { failurePolicy: failurePolicy },
  '#withValidations':: d.fn(help='"Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required."', args=[d.arg(name='validations', type=d.T.array)]),
  withValidations(validations): { validations: if std.isArray(v=validations) then validations else [validations] },
  '#withValidationsMixin':: d.fn(help='"Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='validations', type=d.T.array)]),
  withValidationsMixin(validations): { validations+: if std.isArray(v=validations) then validations else [validations] },
  '#mixin': 'ignore',
  mixin: self,
}