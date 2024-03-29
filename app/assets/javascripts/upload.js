function dragAndDropUploader() {
  // disable auto discover
  Dropzone.autoDiscover = false;

  var dropzone = new Dropzone (".dropzone", {
    maxFilesize: 256, // set the maximum file size to 256 MB
    paramName: "image[photo]", // Rails expects the file upload to be something like model[field_name]
    addRemoveLinks: true // don't show remove links on dropzone itself.
  });

  dropzone.on("success", function(file) {
    this.removeFile(file);
    $.getScript("/images");
  })
}