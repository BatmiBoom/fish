function opam-switch --description "Load opam environment variables"
    if not command -q opam
        echo "opam not found"
        return 1
    end
    
    eval (opam env)
end
