# Marvelapp Onebox
Marvelapp Onebox for embedding mobile prototypes in Discourse



## Installation

As seen in a [how-to on meta.discourse.org](https://meta.discourse.org/t/advanced-troubleshooting-with-docker/15927#Example:%20Install%20a%20plugin), simply **add the plugin's repo url to your container's app.yml file**:

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/naveed-ahmad/marvelapp_onebox.git
```
* Rebuild the container

```
cd /var/docker
git pull
./launcher rebuild app
```
