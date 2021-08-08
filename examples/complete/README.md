<!-- BEGIN_TF_DOCS -->
# Imported Contract Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "aci_imported_contract" {
  source = "netascode/imported_contract/aci"

  tenant        = "ABC"
  name          = "CON1"
  contract      = "CON1"
  tenant_source = "DEF"
}

```
<!-- END_TF_DOCS -->