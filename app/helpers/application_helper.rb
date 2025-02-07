module ApplicationHelper

    def render_answer_form_helper(answer, form)
        partial = answer.question.type.to_s.split("::").last.downcase
        render partial: "answer_wrapper", locals: { f: form, answer: answer, partial: partial }
    end

    def checkbox_checked?(answer, option)
        answers_delimiter = Rapidfire.answers_delimiter
        answers = answer.answer_text.to_s.split(answers_delimiter)
        answers.include?(option)
    end

end
