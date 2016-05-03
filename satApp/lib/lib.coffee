# Students Collection and Schema
Students = new (orion.collection)('students',
  singularName: 'student'
  pluralName: 'students'
  title: 'Students'
  link: title: 'Students'
  tabular: columns: [
    {
      data: 'title'
      title: 'Title'
    }
    orion.attributeColumn('file', 'image', 'Image')
    orion.attributeColumn('summernote', 'Service Logs', 'Content', { orderable: true })
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
  body: orion.attribute('summernote', label: 'Service Logs')
  createdBy: orion.attribute('createdBy'))

# Teachers Collection and Schema
Teachers = new (orion.collection)('teachers',
  singularName: 'teacher'
  pluralName: 'teachers'
  title: 'Teachers'
  link: title: 'Teachers'
  tabular: columns: [
    {
      data: 'title'
      title: 'Title'
    }
    orion.attributeColumn('file', 'image', 'Image')
    orion.attributeColumn('summernote', 'body', 'Content', { orderable: true })
    orion.attributeColumn('createdBy', 'createdBy', 'Created By')
  ]
    )


Teachers.attachSchema new SimpleSchema(
  name: type: String
  class: type: String
  grade: {
    type: Number
    min: 6
    max: 12
  }
  subject: {
    type: Number
    label: "Subject"
  }
  image: orion.attribute('file',
    label: 'Image'
    optional: true)
  body: orion.attribute('summernote', label: 'Body')
  createdBy: orion.attribute('createdBy'))

  # Student Action Plan Collection and Schema
  # ActionPlan = new (orion.collection)('actionPlans',
  #   singularName: 'actionPlan'
  #   pluralName: 'actionPlans'
  #   title: 'ActionPlan'
  #   link: title: 'ActionPlan'
  #   tabular: columns: [
  #     {
  #       data: 'title'
  #       title: 'Title'
  #     }
  #     orion.attributeColumn('summernote', 'Service Logs', 'Content', { orderable: true })
  #     orion.attributeColumn('createdBy', 'createdBy', 'Created By')
  #   ]
  #     )
  #
  #
  # ActionPlan.attachSchema new SimpleSchema(
  #   studentName: {
  #     type: String
  #     label: "Student Name"
  #   }
  #   teacherName: {
  #     type: String
  #     label: "Teacher Name"
  #   }
  #   subject: {
  #     type: String
  #     label: "Subject"
  #   }
  #   date: {
  #     type: Date
  #     label: "Date Initiated"
  #   }
  #   presentGrade: {
  #     type: Number
  #     label: "Present Grade %"
  #   }
  #   class: type: String
  #   grade: {
  #     type: Number
  #     min: 6
  #     max: 12
  #   }
  #   attendance: {
  #     type: Number
  #     label: "Days absent"
  #   }
  #   targetBehaviors: orion.attribute('summernote', label: 'Target Behavior(s)')
  #   interventions: {
  #     studentGoals: orion.attribute('summernote', label: 'Student Goals')
  #     interventionGoals: orion.attribute('summernote', label: 'Interventions to Obtain Goals')
  #     personResponsible: {
  #       type: String
  #       label: "Person(s) Responsible"
  #     }
  #   }
  #   createdBy: orion.attribute('createdBy'))
