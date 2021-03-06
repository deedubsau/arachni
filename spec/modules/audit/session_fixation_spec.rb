require 'spec_helper'

describe name_from_filename do
    include_examples 'module'

    before :all do
        session.set_login_check( url, /dear user/ )
    end

    def self.targets
        %w(Generic)
    end

    def self.elements
        [ Element::FORM, Element::LINK ]
    end

    def issue_count
        4
    end

    easy_test
end
