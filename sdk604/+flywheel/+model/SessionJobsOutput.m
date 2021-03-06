% SessionJobsOutput
%
% SessionJobsOutput Properties:
%    jobs       
%    containers 
%
% SessionJobsOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef SessionJobsOutput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'jobs', 'containers' }, ...
            { 'jobs', 'containers' });
    end
    properties(Dependent)
        jobs
        containers
    end
    methods
        function obj = SessionJobsOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.SessionJobsOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'jobs', []);
                addParameter(p, 'containers', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.jobs)
                    obj.props_('jobs') = p.Results.jobs;
                end
                if ~isempty(p.Results.containers)
                    obj.props_('containers') = p.Results.containers;
                end
            end
        end
        function result = get.jobs(obj)
            if ismethod(obj, 'get_jobs')
                result = obj.get_jobs();
            else
                if isKey(obj.props_, 'jobs')
                    result = obj.props_('jobs');
                else
                    result = [];
                end
            end
        end
        function obj = set.jobs(obj, value)
            obj.props_('jobs') = value;
        end
        function result = get.containers(obj)
            if ismethod(obj, 'get_containers')
                result = obj.get_containers();
            else
                if isKey(obj.props_, 'containers')
                    result = obj.props_('containers');
                else
                    result = [];
                end
            end
        end
        function obj = set.containers(obj, value)
            obj.props_('containers') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'jobs')
                result('jobs') = flywheel.ModelBase.cellmap(@toJson, obj.props_('jobs'));
            end
            if isKey(obj.props_, 'containers')
                result('containers') = flywheel.ModelBase.serializeValue(obj.props_('containers'), 'containers.Map[String, containers.Map]');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'jobs')
                result.jobs = flywheel.ModelBase.cellmap(@struct, obj.props_('jobs'));
            else
                result.jobs = [];
            end
            if isKey(obj.props_, 'containers')
                result.containers = obj.props_('containers');
            else
                result.containers = [];
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
                if isKey(obj.props_, 'jobs')
                    propList.jobs = obj.props_('jobs');
                else
                    propList.jobs = [];
                end
                if isKey(obj.props_, 'containers')
                    propList.containers = obj.props_('containers');
                else
                    propList.containers = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.SessionJobsOutput;
            if isfield(json, 'jobs')
                obj.props_('jobs') = flywheel.ModelBase.cellmap(@(x) flywheel.model.Job.fromJson(x, context), json.jobs);
            end
            if isfield(json, 'containers')
                obj.props_('containers') = flywheel.ModelBase.deserializeValue(json.containers, 'containers.Map[String, containers.Map]');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.SessionJobsOutput')
                    obj = flywheel.model.SessionJobsOutput(obj);
                end
                if isKey(obj.props_, 'jobs')
                    obj.props_('jobs') = flywheel.ModelBase.cellmap(@flywheel.model.Job.ensureIsInstance, obj.props_('jobs'));
                end
                if isKey(obj.props_, 'containers')
                end
            end
        end
    end
end
