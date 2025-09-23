module ToolbarHelper
  def self.sova_link_from_record(record_id, record_type)
    begin
      path = record_id.strip.downcase
      if record_type == 'archival_object'
        path.gsub!('_', '/')
      end
    rescue
      path = ''
    end

    File.join('/record/',
              path)
  end
end
