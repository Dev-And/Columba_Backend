require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
    cloud_name: "tiburon-ltd",
    api_key:    "583693655896989",
    api_secret: "Ul_04JnPfzb4pWjpvwVxJfmD-GM",
    )

Shrine.storages = {
    cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
    store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}