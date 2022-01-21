<#assign Flavor=statics['org.summerclouds.idlgen.core.JavaFlavor']>
package ${_model.getProperties().package};

public interface ${classModule}Service {

  <#list _services as service>
  ${Flavor.toField(service.result)} do${service.getProperties().className}(${Flavor.toParameters(service)});
  </#list>

}