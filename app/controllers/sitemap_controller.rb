class SitemapController < ApplicationController
  layout nil
  
  def index
    headers['Content-Type'] = 'application/xml'
    latest = Secret.last
    if stale?(:etag => latest, :last_modified => latest.updated_at.utc)
      respond_to do |format|
        format.xml { @secrets = Secret.sitemap.published }
      end
    end
  end
end