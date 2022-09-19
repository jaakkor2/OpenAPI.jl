# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


function create_user_read(handler)
    function create_user_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["body"] = OpenAPI.Servers.to_param_type(User, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function create_user_validate(handler)
    function create_user_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function create_user_invoke(impl; post_invoke=nothing)
    function create_user_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.create_user(req::HTTP.Request, openapi_params["body"];)
        catch ex
            @error("Error in create_user", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function create_users_with_array_input_read(handler)
    function create_users_with_array_input_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["body"] = OpenAPI.Servers.to_param_type(Vector{User}, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function create_users_with_array_input_validate(handler)
    function create_users_with_array_input_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function create_users_with_array_input_invoke(impl; post_invoke=nothing)
    function create_users_with_array_input_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.create_users_with_array_input(req::HTTP.Request, openapi_params["body"];)
        catch ex
            @error("Error in create_users_with_array_input", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function create_users_with_list_input_read(handler)
    function create_users_with_list_input_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["body"] = OpenAPI.Servers.to_param_type(Vector{User}, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function create_users_with_list_input_validate(handler)
    function create_users_with_list_input_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function create_users_with_list_input_invoke(impl; post_invoke=nothing)
    function create_users_with_list_input_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.create_users_with_list_input(req::HTTP.Request, openapi_params["body"];)
        catch ex
            @error("Error in create_users_with_list_input", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function delete_user_read(handler)
    function delete_user_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        path_params = HTTP.getparams(req)
        openapi_params["username"] = OpenAPI.Servers.to_param(String, path_params, "username", required=true, )
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function delete_user_validate(handler)
    function delete_user_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function delete_user_invoke(impl; post_invoke=nothing)
    function delete_user_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.delete_user(req::HTTP.Request, openapi_params["username"];)
        catch ex
            @error("Error in delete_user", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function get_user_by_name_read(handler)
    function get_user_by_name_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        path_params = HTTP.getparams(req)
        openapi_params["username"] = OpenAPI.Servers.to_param(String, path_params, "username", required=true, )
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function get_user_by_name_validate(handler)
    function get_user_by_name_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function get_user_by_name_invoke(impl; post_invoke=nothing)
    function get_user_by_name_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.get_user_by_name(req::HTTP.Request, openapi_params["username"];)
        catch ex
            @error("Error in get_user_by_name", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function login_user_read(handler)
    function login_user_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        query_params = HTTP.queryparams(URIs.URI(req.target))
        openapi_params["username"] = OpenAPI.Servers.to_param(String, query_params, "username", required=true, )
        openapi_params["password"] = OpenAPI.Servers.to_param(String, query_params, "password", required=true, )
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function login_user_validate(handler)
    function login_user_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function login_user_invoke(impl; post_invoke=nothing)
    function login_user_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.login_user(req::HTTP.Request, openapi_params["username"], openapi_params["password"];)
        catch ex
            @error("Error in login_user", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function logout_user_read(handler)
    function logout_user_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function logout_user_validate(handler)
    function logout_user_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function logout_user_invoke(impl; post_invoke=nothing)
    function logout_user_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.logout_user(req::HTTP.Request;)
        catch ex
            @error("Error in logout_user", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function update_user_read(handler)
    function update_user_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        path_params = HTTP.getparams(req)
        openapi_params["username"] = OpenAPI.Servers.to_param(String, path_params, "username", required=true, )
        openapi_params["body"] = OpenAPI.Servers.to_param_type(User, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function update_user_validate(handler)
    function update_user_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function update_user_invoke(impl; post_invoke=nothing)
    function update_user_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = try
            impl.update_user(req::HTTP.Request, openapi_params["username"], openapi_params["body"];)
        catch ex
            @error("Error in update_user", exception=(ex, catch_backtrace()))
            HTTP.Response(500, "Internal Server Error")
        end
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end


function registerUserApi(router::HTTP.Router, impl; path_prefix::String="", optional_middlewares...)
    HTTP.register!(router, "POST", path_prefix * "/user", OpenAPI.Servers.middleware(impl, create_user_read, create_user_validate, create_user_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/user/createWithArray", OpenAPI.Servers.middleware(impl, create_users_with_array_input_read, create_users_with_array_input_validate, create_users_with_array_input_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/user/createWithList", OpenAPI.Servers.middleware(impl, create_users_with_list_input_read, create_users_with_list_input_validate, create_users_with_list_input_invoke; optional_middlewares...))
    HTTP.register!(router, "DELETE", path_prefix * "/user/{username}", OpenAPI.Servers.middleware(impl, delete_user_read, delete_user_validate, delete_user_invoke; optional_middlewares...))
    HTTP.register!(router, "GET", path_prefix * "/user/{username}", OpenAPI.Servers.middleware(impl, get_user_by_name_read, get_user_by_name_validate, get_user_by_name_invoke; optional_middlewares...))
    HTTP.register!(router, "GET", path_prefix * "/user/login", OpenAPI.Servers.middleware(impl, login_user_read, login_user_validate, login_user_invoke; optional_middlewares...))
    HTTP.register!(router, "GET", path_prefix * "/user/logout", OpenAPI.Servers.middleware(impl, logout_user_read, logout_user_validate, logout_user_invoke; optional_middlewares...))
    HTTP.register!(router, "PUT", path_prefix * "/user/{username}", OpenAPI.Servers.middleware(impl, update_user_read, update_user_validate, update_user_invoke; optional_middlewares...))
    return router
end
