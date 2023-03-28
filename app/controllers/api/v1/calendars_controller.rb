module Api
  module V1
    class CalendarsController < RootController
      def index
        calendars = Calendar.all
        render json: calendars.to_json, status: :ok
      end

      def create

      end

      def destroy

      end

    end
  end
end
