class TestController < ApplicationController

  def aws
    Aws.config.update({
      region: ENV['AWS_REGION'],
      credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV["AWS_SECRET_ACCESS_KEY"])
    })

    Aws::EC2::Client
  end

  def aws2
    Aws::EC2::Client
  end

  def aws3
    instance = Aws::S3::Client.new(
      region: "us-west-1",
      credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV["AWS_SECRET_ACCESS_KEY"])
    )
  end
end