module CompatibilitiesHelper

    def isCompatible(first_version, second_version)
        Compatibility.where(:first_version_id => first_version.id, :second_version_id => second_version.id).size > 0
    end
end
