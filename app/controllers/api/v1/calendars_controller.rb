module Api
  module V1
    class CalendarsController < RootController
      def index
        calendars = Calendar.all

        render json: calendars.to_json, status: :ok
      end

      def create
        unless date_params_persisted?
          render json: { error: 'date cannot be empty' }, status: :unprocessable_entity

        else
          calendar = Calendar.new(calendar_params)

          if calendar.save
            render json: calendar.to_json, status: :ok
          else
            render json: { error: calendar.errors.full_messages }, status: :unprocessable_entity
          end
        end
      end

      def destroy
        calendar = Calendar.find(params[:id])
        calendar.destroy

        render json: {}, status: :no_content
      end

      private

      def calendar_params
        params.permit(:perfomance_id, :start_date, :end_date)

        {
          perfomance_id: params[:perfomance_id],
          duration: Date.parse(params[:start_date])..Date.parse(params[:end_date])
        }
      end

      def date_params_persisted?
        params[:start_date].present? && params[:end_date].present?
      end

    end
  end
end
