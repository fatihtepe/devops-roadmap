[Terraform Developer’s Tips & Tricks](https://medium.com/@mike.ensor/terraform-developers-tips-tricks-d5c4be14a553)
Terraform has become an industry standard tool to express infrastructure-as-code in a declarative format. Terraform can be complicated and often, advice changes based on your company and teams’ unique experience level and adoption of Infrastructure-as-Code. A common best-practice discussed in most of the blogs states that Terraform should be run using a CI (continuous integration) tool. There are multiple challenges when developing while using a CI, this blog will cover remote state, local vs CI builds and managing modules locally based on experience learned over the last few years.

[Terraform — 5 Ways To Create Infrastructure in Multiple Environments](https://medium.com/bb-tutorials-and-thoughts/terraform-5-ways-to-create-infrastructure-in-multiple-environments-8a6e3f42a694)
Terraform is an open-source infrastructure as a code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

[Passing the HashiCorp Certified: Terraform Associate Exam in 20 Minutes — Review of the Exam, Terraform Learning Path, and Exam Tips](https://medium.com/4th-coffee/passing-the-hashicorp-certified-terraform-associate-exam-in-20-minutes-learning-path-and-tips-bd851f210017)

Terraform is the de facto “Infrastructure as Code” tool to manage your cloud infrastructure automatically.

You don’t need to know everything about Terraform. For example, it’s completely fine if you don’t know and have never used workspace. A particular topic only takes up so much percentage in the exam that even if you get it all wrong, it doesn’t matter. With the same logic, if you don’t plan to use Terraform enterprise or Terraform cloud after figuring out what it is, you don't have to know it all, like what extra features it brings.

[Detecting and Managing Drift with Terraform](https://www.hashicorp.com/blog/detecting-and-managing-drift-with-terraform)

HashiCorp Terraform enables you to safely and predictably manage the lifecycle of your infrastructure using declarative configuration files. One challenge when managing infrastructure as code is drift. Drift is the term for when the real-world state of your infrastructure differs from the state defined in your configuration. This can happen for many reasons. Within the context of your configuration, it happens when adding or removing resources or changing resource definitions. External to your configuration, drift occurs when resources have been terminated or have failed, and when changes have been made manually or via other automation tools.
