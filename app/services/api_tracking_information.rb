class ApiTrackingInformation
  require 'dotenv/load'

  def self.tracking_by(**args)

    begin
      if args[:id]
        api_url = "https://api.aftership.com/v4/trackings/#{args[:id]}"
      elsif args[:slug] && args[:tracking_number]
        api_url = "https://api.aftership.com/v4/trackings/#{args[:slug]}/#{args[:tracking_number]}"
      end

      response = HTTParty.get(api_url,
        {
         content_type: 'application/json',
         authorization: 'Bearer ' + ENV['API_KEY']
        }
      )
      result = JSON.parse(response.body)

    rescue HTTParty::Error => e
      puts 'HttParty::Error '+ e.message
      return {}
    end

    if response.success? && result["data"].key?("tracking")
      {
        "status"                  => result["data"]["tracking"]["tag"],
        "current_location"        => result["data"]["tracking"]["checkpoints"].last["location"],
        "last_checkpoint_message" => result["data"]["tracking"]["checkpoints"].last["message"],
        "last_checkpoint_time"    => Date.parse(result["data"]["tracking"]["checkpoints"].last["checkpoint_time"]).strftime("%A, %d %B %Y at %l %p"),
      }
    else
      return {}
    end

  end

end
