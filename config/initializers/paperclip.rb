Paperclip::Attachment.default_options[:url] = ":s3_alias_url"
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_alias] = 'http://d2ki179ibfama0.cloudfront.net/photos/'


