Students = new (orion.collection)('students',
  singularName: 'student'
  pluralName: 'students'
  title: 'students'
  link: title: 'Students'
  tabular: columns: [
    {
      data: 'title'
      title: 'Title'
    }
    orion.attributeColumn('file', 'image', 'Image')
    orion.attributeColumn('summernote', 'body', 'Content', orderable: true )
    orion.attributeColumn('createdBy', 'createdBy', 'Created By')
  ]
    )


Students.attachSchema new SimpleSchema(
  name: type: String
  status: {
    type: Boolean
    label: "On Intervention List"
  }
  class: type: String
  grade: {
    type: Number
    min: 6
    max: 12
  }
  attendance: {
    type: Number
    label: "Days absent"
  }
  image: orion.attribute('file',
    label: 'Image'
    optional: true)
  body: orion.attribute('summernote', label: 'Body')
  createdBy: orion.attribute('createdBy'))
