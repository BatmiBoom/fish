function docker-stop --description "Stop all running Docker containers"
    if not command -q docker
        echo "Docker not found"
        return 1
    end
    
    set containers (docker ps -q)
    
    if test -z "$containers"
        echo "No running containers found"
        return 0
    end
    
    echo "Stopping all running containers..."
    docker stop $containers
    echo "All containers stopped"
end
