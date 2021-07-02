{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='replicaSetStatus', url='', help='ReplicaSetStatus represents the current status of a ReplicaSet.'),
  '#withAvailableReplicas':: d.fn(help='The number of available replicas (ready for at least minReadySeconds) for this replica set.', args=[d.arg(name='availableReplicas', type=d.T.integer)]),
  withAvailableReplicas(availableReplicas): { availableReplicas: availableReplicas },
  '#withConditions':: d.fn(help="Represents the latest available observations of a replica set's current state.", args=[d.arg(name='conditions', type=d.T.array)]),
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  '#withConditionsMixin':: d.fn(help="Represents the latest available observations of a replica set's current state.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='conditions', type=d.T.array)]),
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  '#withFullyLabeledReplicas':: d.fn(help='The number of pods that have labels matching the labels of the pod template of the replicaset.', args=[d.arg(name='fullyLabeledReplicas', type=d.T.integer)]),
  withFullyLabeledReplicas(fullyLabeledReplicas): { fullyLabeledReplicas: fullyLabeledReplicas },
  '#withObservedGeneration':: d.fn(help='ObservedGeneration reflects the generation of the most recently observed ReplicaSet.', args=[d.arg(name='observedGeneration', type=d.T.integer)]),
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  '#withReadyReplicas':: d.fn(help='The number of ready replicas for this replica set.', args=[d.arg(name='readyReplicas', type=d.T.integer)]),
  withReadyReplicas(readyReplicas): { readyReplicas: readyReplicas },
  '#withReplicas':: d.fn(help='Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller', args=[d.arg(name='replicas', type=d.T.integer)]),
  withReplicas(replicas): { replicas: replicas },
  '#mixin': 'ignore',
  mixin: self,
}
