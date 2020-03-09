# Create a new load balancer
resource "aws_elb" "web" {
  name               = "${var.project_name}-elb"
  subnets = ["subnet-1b772725", "subnet-61bd7b6f", "subnet-a98955e4", "subnet-c5737a99", "subnet-e6171cc8", "subnet-ec99948b"]

/*
access_logs {
    bucket        = "foo"
    bucket_prefix = "bar"
    interval      = 60
  }*/

  security_groups     = [
      aws_security_group.allow_http_anywhere.id
  ]

  listener {
    instance_port     = 80    
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  /*
  listener {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }*/

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 2
    target              = "HTTP:80/"
    interval            = 5
  }

/*
  stances                   = ["${aws_instance.foo.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
*/
  tags = {
    Name = "${var.project_name}-elb-web"
  }
}
