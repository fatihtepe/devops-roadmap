[Kubernetes explained deep enough](https://itnext.io/kubernetes-explained-deep-enough-1ea2c6821501)<br>
Why another Kubernetes series?
As the popularity of Kubernetes grows, so does the number of great online resources and learning materials. A lot of available information is either designed for absolute beginners or does a very deep dive into a specific topic.<br>

My goal is to write about Kubernetes topics in a practical way, like storage, deployments, services etc and provide exercises scenarios for everyone to follow along. The idea is to focus on the core functionality, understand it well enough and exercise along. If you already watched a few tutorials and maybe created pod or deployment and are ready for the next level, this series is for you.

[Network Service in Kubernetes](https://iceburn.medium.com/network-service-in-kubernetes-a57ef808527)

Kubernetes network service related components
The network service related components of k8s are further divided into the following categories.
- Load Balancer / Ingress: Load balancer (LB), Ingress is a layer that receives communication from outside the cluster and transfers it into the cluster. In particular, LB is “outside the cluster”, so it is often placed separately from K8s. Or the component of Ingress may also be the LB.

- DNS / Service Discovery: Performs name resolution and monitoring of pods and containers inside the cluster . It is a traffic control role in the cluster. In k8s, it’s usually a component of DNS and service discovery rather than DNS alone.

- CNI: A component that supports the Container Network Interface (CNI), which tunnels communication between containers.
Service mesh: A service mesh is a system that can comprehensively and centrally manage pods and services by combining any of the above.

[Kubernetes Environments That You Can Try for Free on Your Browser](https://iceburn.medium.com/kubernetes-environments-that-you-can-try-for-free-on-your-browser-43673d5edf08)

Sometimes you want to quickly prepare a kubernetes environment for learning purposes and for small experiments. I introduce a free kubernetes environment that can be used on the browser, which is convenient in such a case.

[Kubernetes — Ingress Overview
](https://medium.com/devops-mojo/kubernetes-ingress-overview-what-is-kubernetes-ingress-introduction-to-k8s-ingress-b0f81525ffe2)

In Kubernetes, an Ingress is an object that allows access to Kubernetes services from outside the Kubernetes cluster. You can configure access by creating a collection of rules that define which inbound connections reach which services.

An Ingress can be configured to give Services externally-reachable URLs, load balance traffic, terminate SSL/TLS, and offer name-based virtual hosting. Ingress lets you configure an HTTP load balancer for applications running on Kubernetes, represented by one or more Kubernetes internal Services.


[Kubectl Useful Commands](https://iceburn.medium.com/kubectl-useful-commands-f5f47c0773f)

`Kubernetes Shortcuts`

- po : Pods
- rs : ReplicaSets
- deploy : Deployments
- svc : Services
- ns : Namespaces
- netpol : Network policies
- pv : Persistent Volumes
- pvc : PersistentVolumeClaims
- in : Service Accounts

[Kubernetes Fundamentals For Absolute Beginners: Architecture & Components](https://medium.com/the-programmer/kubernetes-fundamentals-for-absolute-beginners-architecture-components-1f7cda8ea536)

K8s is a production-grade open-source container orchestration tool developed by Google to help you manage the containerized/dockerized applications supporting multiple deployment environments like On-premise, cloud, or virtual machines.

[Kubernetes in Action !!
](https://faun.pub/kubernetes-in-action-dec7c0583b7)

Kubernetes: History Overview
When docker manages the microservices and containers, a container management system became a paramount requirement for all organizations and individuals, during time Google was already working on the project and opensource the project called Borg. To enchase the container management system company came up with the Kubernetes, an open-source project to automate the process of deploying and managing the multi-cloud application at scale.