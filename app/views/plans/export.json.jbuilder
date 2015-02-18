json.project_title @exported_plan.plan.project.title
json.phase_title @exported_plan.plan.version.phase.title

details = @exported_plan.admin_details

if details.present?
  json.details do
    details.each do |field|
      value = @exported_plan.send(field)
      json.set! field.to_sym, value if value.present?
    end
  end
end

json.sections do
  @exported_plan.sections.each do |section|
    json.set! section.number do
      json.title section.title
      json.questions do
        @exported_plan.questions_for_section(section.id).each do |question|
          json.set! question.number do
            json.question_text question.text

            answer = @exported_plan.plan.answer(question.id, false)

            if answer.present? && question.multiple_choice
              json.selections do
                answer.options.each do |o|
                  json.set! o.number, o.text
                end
              end
            end

            json.answer_text (answer.try(:text) || 'Question not answered')
          end
        end
      end
    end
  end
end
