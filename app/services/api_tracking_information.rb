class ApiTrackingInformation
  require 'open-uri'
  require 'pry'

  def self.tracking_by(**args)
    begin
      if args[:id]
        api_url = "https://api.aftership.com/v4/trackings/#{args[:id]}"
      elsif args[:slug] && args[:tracking_number]
        api_url = "https://api.aftership.com/v4/trackings/#{args[:slug]}/#{args[:tracking_number]}"
      end

      serialized = open(
        api_url,
        "aftership-api-key" => "711623ab-a860-4d3a-84d1-bfa891ff5058",
        "Content-Type" => "application/json"
      ).read

      result = JSON.parse(serialized)

    rescue OpenURI::HTTPError => ex
      puts "\n OpenURI::HTTPError (404 Not Found) \n\n"
      return {}
    end

    if result && !result["data"]["tracking"]["checkpoints"].last.nil?
      {
        "status"                  => result["data"]["tracking"]["tag"],
        "current_location"        => result["data"]["tracking"]["checkpoints"].last["location"],
        "last_checkpoint_message" => result["data"]["tracking"]["checkpoints"].last["message"],
        "last_checkpoint_time"    => Date.parse(result["data"]["tracking"]["checkpoints"].last["checkpoint_time"]).strftime("%A, %d %B %Y at %l %p"),
      }
    else
      {}
    end

  end

end
