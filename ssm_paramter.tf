resource "aws_ssm_parameter" "foo_v1" {
  name  = "/lab/service/ssm_parameter_ignorechanges"
  type  = "String"
  value = "esto_es_una variable"

  lifecycle {
    ignore_changes = [value]
  }

}

resource "aws_ssm_parameter" "foo_v2" {
  name  = "/lab/service/ssm_parameter"
  type  = "String"
  value = "esto_es_una variable"
}

