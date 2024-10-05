default:
    @just --list
generate:
    @just bashly generate
bashly command="generate":
    docker run --rm -it --user $(id -u):$(id -g) --volume "$PWD:/app" dannyben/bashly {{command}}
