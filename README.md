# localstack_ssm_parameter
Explicar el funcionamiento de tf con ssm parameter e ignore_changes

## Como ver los parametros ssm creados en Localstack
Con el siguiente comando:_

```aws --endpoint-url=http://localhost:4566 ssm describe-parameters```

Lo que vamos a poder es ver todos los parametros creados desde terraform

```
{
    "Parameters": [
        {
            "Name": "/lab/service/ssm_parameter_ignorechanges",
            "Type": "String",
            "LastModifiedDate": "2023-09-03T20:08:32.269000+02:00",
            "LastModifiedUser": "N/A",
            "Version": 1,
            "DataType": "text"
        },
        {
            "Name": "/lab/service/ssm_parameter",
            "Type": "String",
            "LastModifiedDate": "2023-09-03T20:08:32.275000+02:00",
            "LastModifiedUser": "N/A",
            "Version": 1,
            "DataType": "text"
        }
    ]
}
```
Vamos a ver dos parametros generados de los cuales /lab/service/ssm_parameter_ignorechanges es el que no le van a afectar los cambios en el value y /lab/service/ssm_parameter todo cambio en value va a aplicar cambios cuando hagamos un apply desde terraform.

Como vamos a cambiar los parametros
```
aws ssm --endpoint-url=http://localhost:4566  put-parameter \                                                                                       ─╯
    --name "parameter-name" \
    --value "value" \
    --type String \
    --overwrite
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.foo_v1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.foo_v2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->


## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicolas-abihaggle/)