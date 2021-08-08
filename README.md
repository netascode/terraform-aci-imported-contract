<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-imported-contract/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-imported-contract/actions/workflows/test.yml)

# Terraform ACI Imported Contract Module

ACI Imported Contract

Location in GUI:
`Tenants` » `XXX` » `Contracts` » `Imported`

## Examples

```hcl
module "aci_imported_contract" {
  source = "netascode/imported_contract/aci"

  tenant        = "ABC"
  name          = "CON1"
  contract      = "CON1"
  tenant_source = "DEF"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Tenant name. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Imported contract name. | `string` | n/a | yes |
| <a name="input_contract"></a> [contract](#input\_contract) | Source contract name. | `string` | n/a | yes |
| <a name="input_tenant_source"></a> [tenant\_source](#input\_tenant\_source) | Source Ccntract tenant name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `vzCPIf` object. |
| <a name="output_name"></a> [name](#output\_name) | Imported contract name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.vzCPIf](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
| [aci_rest.vzRsIf](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->