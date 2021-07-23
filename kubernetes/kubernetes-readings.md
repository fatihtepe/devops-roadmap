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
