package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PersonsAppointment;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * t_persons_appointment 接口
 *
 * @author baiqw
 */

@Path("personsappointments")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="personsappointments", description = "t_persons_appointment接口")
public interface PersonsAppointmentRestService extends CURDRestService<PersonsAppointment>{
    /**
     * t_persons_appointment
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "t_persons_appointment",
            notes = "t_persons_appointment列表.")
    RestResult<List<PersonsAppointment>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * t_persons_appointment 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "t_persons_appointment详细信息.")
    RestResult<PersonsAppointment> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改t_persons_appointment", notes = "添加/修改t_persons_appointment")
    RestResult<PersonsAppointment> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,PersonsAppointment personsAppointment);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除t_persons_appointment", notes = "删除t_persons_appointment")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
