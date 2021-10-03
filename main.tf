resource "aci_rest" "vzCPIf" {
  dn         = "uni/tn-${var.tenant}/cif-${var.name}"
  class_name = "vzCPIf"
  content = {
    name = var.name
  }
}

resource "aci_rest" "vzRsIf" {
  dn         = "${aci_rest.vzCPIf.id}/rsif"
  class_name = "vzRsIf"
  content = {
    tDn = "uni/tn-${var.source_tenant}/brc-${var.source_contract}"
  }
}
