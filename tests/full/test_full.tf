terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

resource "aci_rest" "fvTenant" {
  dn         = "uni/tn-TF"
  class_name = "fvTenant"
}

module "main" {
  source = "../.."

  tenant        = aci_rest.fvTenant.content.name
  name          = "CON1"
  contract      = "CON1"
  tenant_source = "DEF"
}

data "aci_rest" "vzCPIf" {
  dn = "uni/tn-${aci_rest.fvTenant.content.name}/cif-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "vzCPIf" {
  component = "vzCPIf"

  equal "name" {
    description = "name"
    got         = data.aci_rest.vzCPIf.content.name
    want        = module.main.name
  }
}

data "aci_rest" "vzRsIf" {
  dn = "${data.aci_rest.vzCPIf.id}/rsif"

  depends_on = [module.main]
}

resource "test_assertions" "vzRsIf" {
  component = "vzRsIf"

  equal "tDn" {
    description = "tDn"
    got         = data.aci_rest.vzRsIf.content.tDn
    want        = "uni/tn-DEF/brc-CON1"
  }
}
