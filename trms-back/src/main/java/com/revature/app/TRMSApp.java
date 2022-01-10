package com.revature.app;


import io.javalin.Javalin;
import io.javalin.http.HttpCode;
import io.javalin.plugin.json.JsonMapper;

import static io.javalin.apibuilder.ApiBuilder.*;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.controllers.EmployeeController;
import com.revature.controllers.RequestsController;

public class TRMSApp {

	public static void main(String[] args) {
		Javalin app = Javalin.create(config -> {
			config.enableCorsForAllOrigins();
			config.jsonMapper(new JacksonMapper());
		});
		
		app.start();
		
		app.before("/requests/*", ctx -> {
			if(!ctx.method().equals("OPTIONS")) {
				ctx.header("Access-Control-Allow-Header", "Token");
				ctx.header("Access-Control-Expose-Headers", "Token");
				
				String token = ctx.header("Token");
				if (token==null) ctx.status(HttpCode.UNAUTHORIZED);
			}
		});
		
		app.routes(() -> {
			// localhost:8080/
			path("/myrequests", () -> {
				post(RequestsController::submitReimbursementRequest);
				path("/requestor/{id}", () -> {
					get(RequestsController::getRequestsByRequestor);
				});
				path("/approver/{id}", () -> {
					get(RequestsController::getPendingRequestsByApprover);
				});
			});
			
			path("/employees", () -> {
				post(EmployeeController::register);
				path("/auth", () -> {
					post(EmployeeController::logIn);
				});
				path("/{id}", () -> {
					get(EmployeeController::getUserById);
					path("/auth", () -> {
						get(EmployeeController::checkLogin);
					});
				});
			});
		});
	}

}
class JacksonMapper implements JsonMapper {
    ObjectMapper om = new ObjectMapper();

    {
        om.findAndRegisterModules();
    }

    @Override
    public String toJsonString(Object obj) {
        try {
            return om.writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public <T> T fromJsonString(String json, Class<T> targetClass) {
        try {
            return om.readValue(json, targetClass);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }
}
