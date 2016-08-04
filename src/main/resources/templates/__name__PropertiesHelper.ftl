<#--
  Copyright 2005-2016 Red Hat, Inc.

  Red Hat licenses this file to you under the Apache License, version
  2.0 (the "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
  implied.  See the License for the specific language governing
  permissions and limitations under the License.
-->
package ${package}.internal;

import org.apache.camel.util.component.ApiMethodPropertiesHelper;

import ${package}.${name}Configuration;

/**
 * Singleton {@link ApiMethodPropertiesHelper} for ${name} component.
 */
public final class ${name}PropertiesHelper extends ApiMethodPropertiesHelper<${name}Configuration> {

    private static ${name}PropertiesHelper helper;

    private ${name}PropertiesHelper() {
        super(${name}Configuration.class, ${name}Constants.PROPERTY_PREFIX);
    }

    public static synchronized ${name}PropertiesHelper getHelper() {
        if (helper == null) {
            helper = new ${name}PropertiesHelper();
        }
        return helper;
    }
}