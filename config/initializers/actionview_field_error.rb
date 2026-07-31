# バリデーションエラー時に Bootstrap3 の has-error を適用する
Rails.application.config.action_view.field_error_proc = Proc.new do |html_tag, instance|
  %Q(<div class="field_with_errors has-error">#{html_tag}</div>).html_safe
end
