module Api
  module V1
    class PerfomancesController < RootController
      def create
        perfomance = Perfomance.new(title: params[:title])

        if perfomance.save
          render json: perfomance.to_json, status: :ok
        else
          render json: { error: perfomance.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        perfomance = Perfomance.find(params[:id])
        perfomance.destroy

        render json: {}, status: :no_content
      end
    end
  end
end
