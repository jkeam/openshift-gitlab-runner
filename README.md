# OpenShift GitLab Runner

Project you can use as an example to see how
to install GitLab Runners on OpenShift.

Great thing is that the GitLab Runner is fully supported and
is an OpenShift certified operator.

## Usage

1. Update `gitlab-runner.yaml` with your GitLab url
2. Update `gitlab-runner-secret.yaml` with your GitLab secret token
3. `./run.sh`

## References

1. [OCP and GitLab](https://docs.gitlab.com/ee/install/openshift_and_gitlab)
2. [Install GitLab Runner Operator](https://docs.gitlab.com/runner/install/operator.html)
3. [Configuring GitLab Runner On OCP](https://docs.gitlab.com/runner/configuration/configuring_runner_operator.html)
4. [Youtube Demo using GitLab on OCP](https://www.youtube.com/watch?v=5AbtSxpFQec)
5. [Example Python App](https://gitlab.com/openshift-demos1/hello-world)
