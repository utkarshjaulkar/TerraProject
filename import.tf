import {
  to = aws_vpc.dev-vpc
  id = "vpc-090ce815e237be241"
}

import {
  id = "subnet-0ddbc873e92125964"
  to = aws_subnet.dev-vpc-subnet-private2-ap-south-1b
}
import {
  id = "subnet-034a8ea37fde5dd8a"
  to = aws_subnet.dev-vpc-subnet-private1-ap-south-1a
}
import {
  id = "subnet-045a3aec5e56460df"
  to = aws_subnet.dev-vpc-subnet-public1-ap-south-1a
}
import {
  id = "subnet-08a03a7952ea4c8ea"
  to = aws_subnet.dev-vpc-subnet-public2-ap-south-1b
}

# import {
#   id = "rtb-01a88fe9688299c66_192.71.0.0/16"
#   to = aws_route.dev-vpc-rtb-public
# }
# import {
#   id = "rtb-071f214f4077e8025_192.71.0.0/16"
#   to = aws_route.dev-vpc-rtb-private2-ap-south-1b


# }
# import {
#   id = "rtb-0b744e43ec35c36a5_192.71.0.0/16"
#   to = aws_route.dev-vpc-rtb-private1-ap-south-1a
# }


import {
  id = "igw-06328136f5795d3fe"
  to = aws_internet_gateway.dev-vpc-igw
}

import {
  id = "nat-0d139b2151e229186"
  to = aws_nat_gateway.dev-vpc-natGateway-2
}

import {
  id = "nat-04d4caff0a1c658c5"
  to = aws_nat_gateway.dev-vpc-natGateway-1
}


import {
  id = "sg-07f49b3e041245224"
  to = aws_security_group.dev-vpc-security-group
}

# import {
#   id = "acl-075a52f8c93ff47db"
#   to = aws_network_acl.dev-vpc-network-acl
# }


import {
  id = "db-E73FBDPDRXKUPHI5YE2KLY6PB4"
  to = aws_db_instance.dev-database-postgres
}




