Rapidfire::SurveysController.class_eval do

      before_action :authenticate_administrator!, except: :index
      def create
        @survey = Survey.new(survey_params)
        if @survey.save
              respond_to do |format|
                format.html { render :new }
                format.js
          end
        else
          respond_to do |format|
            format.html { redirect_to survey_questions_path(@survey) }
            format.js
            redirect_to survey_questions_path(@survey)
          end
        end
      end 
      private
      def survey_params
        params.require(:survey).permit(:name, :introduction, :after_survey_content)
      end
    end
    