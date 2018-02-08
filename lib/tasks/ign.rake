namespace :ign do
  desc "TODO"
  task scrapeData: :environment do
      start_execution_response = JSON.parse(RestClient::Request.execute(
          method: :post,
          url: 'https://api.apify.com/v1/Qgr43dwdS3ye2PfYw/crawlers/epCu6ieso3CbXMHRc/execute?token=QHGyDsjEysNtanPrZm5xZd5Kp'
      ))

      status = start_execution_response["status"]
      details_url = start_execution_response["detailsUrl"]
      results_url = start_execution_response["resultsUrl"]

      while status == "RUNNING"
          status = JSON.parse(RestClient::Request.execute(
              method: :get,
              url: details_url
          ))["status"]
      end

      execution_results = JSON.parse(RestClient::Request.execute(
          method: :get,
          url: results_url
      ))[0]["pageFunctionResult"]

      execution_results.each do |result|
          unless Game.where(title: result["title"]) == Game.where(platform: result["platform"])
              new_game = Game.create(
                  title: result["title"],
                  platform: result["platform"],
                  genre: result["genre"]
              )
          else
              existing_game = Game.where(title: result["title"], platform: result["platform"])
          end

          unless Review.exists?(link: result["reviewLink"])
              new_review = Review.create(
                  score: result["score"],
                  date: result["reviewDate"],
                  link: result["reviewLink"]
              )
          end

          if new_review && existing_game
              existing_game.ign_review = new_review
              new_review.game = existing_game
          elsif new_review && new_game
              new_game.ign_review = new_review
              new_review.game = new_game
          end
      end
  end

end
