module VCAP::CloudController
  class TaskAnnotationModel < Sequel::Model(:task_annotations)
    set_primary_key :id
    many_to_one :task,
                class: 'VCAP::CloudController::TaskModel',
                primary_key: :guid,
                key: :resource_guid,
                without_guid_generation: true

    include MetadataModelMixin
  end
end
