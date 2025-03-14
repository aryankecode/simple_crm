# Allowlist Ransack attributes for ActiveStorage models
Rails.application.config.to_prepare do
    ActiveStorage::Attachment.class_eval do
      def self.ransackable_attributes(auth_object = nil)
        ["blob_id", "created_at", "id", "name", "record_id", "record_type"]
      end
    end
  
    ActiveStorage::Blob.class_eval do
      def self.ransackable_attributes(auth_object = nil)
        ["id", "key", "filename", "content_type", "service_name", "byte_size", "checksum", "created_at"]
      end
    end
  end
  