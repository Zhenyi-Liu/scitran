% JobCompletionInput - Describes how a job should be transitioned after outputs have been uploaded
%
% JobCompletionInput Properties:
%    success        - Whether or not the job succeeded
%    elapsed        - The elapsed time of the job, in seconds
%    failureReason  - An optional suspected reason for job failure
%    profile       
%
% JobCompletionInput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef JobCompletionInput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'success', 'elapsed', 'failureReason', 'profile' }, ...
            { 'success', 'elapsed', 'failure_reason', 'profile' });
    end
    properties(Dependent)
        success
        elapsed
        failureReason
        profile
    end
    methods
        function obj = JobCompletionInput(varargin)
            obj@flywheel.ModelBase(flywheel.model.JobCompletionInput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'success', []);
                addParameter(p, 'elapsed', []);
                addParameter(p, 'failureReason', []);
                addParameter(p, 'profile', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.success)
                    obj.props_('success') = p.Results.success;
                end
                if ~isempty(p.Results.elapsed)
                    obj.props_('elapsed') = p.Results.elapsed;
                end
                if ~isempty(p.Results.failureReason)
                    obj.props_('failure_reason') = p.Results.failureReason;
                end
                if ~isempty(p.Results.profile)
                    obj.props_('profile') = p.Results.profile;
                end
            end
        end
        function result = get.success(obj)
            if ismethod(obj, 'get_success')
                result = obj.get_success();
            else
                if isKey(obj.props_, 'success')
                    result = obj.props_('success');
                else
                    result = [];
                end
            end
        end
        function obj = set.success(obj, value)
            obj.props_('success') = value;
        end
        function result = get.elapsed(obj)
            if ismethod(obj, 'get_elapsed')
                result = obj.get_elapsed();
            else
                if isKey(obj.props_, 'elapsed')
                    result = obj.props_('elapsed');
                else
                    result = [];
                end
            end
        end
        function obj = set.elapsed(obj, value)
            obj.props_('elapsed') = value;
        end
        function result = get.failureReason(obj)
            if ismethod(obj, 'get_failureReason')
                result = obj.get_failureReason();
            else
                if isKey(obj.props_, 'failure_reason')
                    result = obj.props_('failure_reason');
                else
                    result = [];
                end
            end
        end
        function obj = set.failureReason(obj, value)
            obj.props_('failure_reason') = value;
        end
        function result = get.profile(obj)
            if ismethod(obj, 'get_profile')
                result = obj.get_profile();
            else
                if isKey(obj.props_, 'profile')
                    result = obj.props_('profile');
                else
                    result = [];
                end
            end
        end
        function obj = set.profile(obj, value)
            obj.props_('profile') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'success')
                result('success') = flywheel.ModelBase.serializeValue(obj.props_('success'), 'logical');
            end
            if isKey(obj.props_, 'elapsed')
                result('elapsed') = flywheel.ModelBase.serializeValue(obj.props_('elapsed'), 'integer');
            end
            if isKey(obj.props_, 'failure_reason')
                result('failure_reason') = flywheel.ModelBase.serializeValue(obj.props_('failure_reason'), 'char');
            end
            if isKey(obj.props_, 'profile')
                result('profile') = obj.props_('profile').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'success')
                result.success = obj.props_('success');
            else
                result.success = [];
            end
            if isKey(obj.props_, 'elapsed')
                result.elapsed = obj.props_('elapsed');
            else
                result.elapsed = [];
            end
            if isKey(obj.props_, 'failure_reason')
                result.failureReason = obj.props_('failure_reason');
            else
                result.failureReason = [];
            end
            if isKey(obj.props_, 'profile')
                result.profile = struct(obj.props_('profile'));
            else
                result.profile = [];
            end
        end
        function result = returnValue(obj)
            result = obj;
        end
    end
    methods(Access = protected)
        function prpgrp = getPropertyGroups(obj)
            if ~isscalar(obj)
                prpgrp = getPropertyGroups@matlab.mixin.CustomDisplay(obj);
            else
                propList = struct;
                if isKey(obj.props_, 'success')
                    propList.success = obj.props_('success');
                else
                    propList.success = [];
                end
                if isKey(obj.props_, 'elapsed')
                    propList.elapsed = obj.props_('elapsed');
                else
                    propList.elapsed = [];
                end
                if isKey(obj.props_, 'failure_reason')
                    propList.failureReason = obj.props_('failure_reason');
                else
                    propList.failureReason = [];
                end
                if isKey(obj.props_, 'profile')
                    propList.profile = obj.props_('profile');
                else
                    propList.profile = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.JobCompletionInput;
            if isfield(json, 'success')
                obj.props_('success') = flywheel.ModelBase.deserializeValue(json.success, 'logical');
            end
            if isfield(json, 'elapsed')
                obj.props_('elapsed') = flywheel.ModelBase.deserializeValue(json.elapsed, 'integer');
            end
            if isfield(json, 'failure_reason')
                obj.props_('failure_reason') = flywheel.ModelBase.deserializeValue(json.failure_reason, 'char');
            end
            if isfield(json, 'profile')
                obj.props_('profile') = flywheel.model.JobProfileInput.fromJson(json.profile, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.JobCompletionInput')
                    obj = flywheel.model.JobCompletionInput(obj);
                end
                if isKey(obj.props_, 'success')
                end
                if isKey(obj.props_, 'elapsed')
                end
                if isKey(obj.props_, 'failure_reason')
                end
                if isKey(obj.props_, 'profile')
                    obj.props_('profile') =  flywheel.model.JobProfileInput.ensureIsInstance(obj.props_('profile'));
                end
            end
        end
    end
end
