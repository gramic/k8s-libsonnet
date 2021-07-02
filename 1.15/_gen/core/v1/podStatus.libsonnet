{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='podStatus', url='', help='PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.'),
  '#withConditions':: d.fn(help='Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions', args=[d.arg(name='conditions', type=d.T.array)]),
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  '#withConditionsMixin':: d.fn(help='Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='conditions', type=d.T.array)]),
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  '#withContainerStatuses':: d.fn(help='The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status', args=[d.arg(name='containerStatuses', type=d.T.array)]),
  withContainerStatuses(containerStatuses): { containerStatuses: if std.isArray(v=containerStatuses) then containerStatuses else [containerStatuses] },
  '#withContainerStatusesMixin':: d.fn(help='The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='containerStatuses', type=d.T.array)]),
  withContainerStatusesMixin(containerStatuses): { containerStatuses+: if std.isArray(v=containerStatuses) then containerStatuses else [containerStatuses] },
  '#withHostIP':: d.fn(help='IP address of the host to which the pod is assigned. Empty if not yet scheduled.', args=[d.arg(name='hostIP', type=d.T.string)]),
  withHostIP(hostIP): { hostIP: hostIP },
  '#withInitContainerStatuses':: d.fn(help='The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status', args=[d.arg(name='initContainerStatuses', type=d.T.array)]),
  withInitContainerStatuses(initContainerStatuses): { initContainerStatuses: if std.isArray(v=initContainerStatuses) then initContainerStatuses else [initContainerStatuses] },
  '#withInitContainerStatusesMixin':: d.fn(help='The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='initContainerStatuses', type=d.T.array)]),
  withInitContainerStatusesMixin(initContainerStatuses): { initContainerStatuses+: if std.isArray(v=initContainerStatuses) then initContainerStatuses else [initContainerStatuses] },
  '#withMessage':: d.fn(help='A human readable message indicating details about why the pod is in this condition.', args=[d.arg(name='message', type=d.T.string)]),
  withMessage(message): { message: message },
  '#withNominatedNodeName':: d.fn(help='nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.', args=[d.arg(name='nominatedNodeName', type=d.T.string)]),
  withNominatedNodeName(nominatedNodeName): { nominatedNodeName: nominatedNodeName },
  '#withPhase':: d.fn(help="The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:\n\nPending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.\n\nMore info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase", args=[d.arg(name='phase', type=d.T.string)]),
  withPhase(phase): { phase: phase },
  '#withPodIP':: d.fn(help='IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.', args=[d.arg(name='podIP', type=d.T.string)]),
  withPodIP(podIP): { podIP: podIP },
  '#withQosClass':: d.fn(help='The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md', args=[d.arg(name='qosClass', type=d.T.string)]),
  withQosClass(qosClass): { qosClass: qosClass },
  '#withReason':: d.fn(help="A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'", args=[d.arg(name='reason', type=d.T.string)]),
  withReason(reason): { reason: reason },
  '#withStartTime':: d.fn(help='Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.', args=[d.arg(name='startTime', type=d.T.string)]),
  withStartTime(startTime): { startTime: startTime },
  '#mixin': 'ignore',
  mixin: self,
}
