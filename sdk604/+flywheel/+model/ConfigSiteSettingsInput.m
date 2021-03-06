% ConfigSiteSettingsInput
%
% ConfigSiteSettingsInput Properties:
%    centerGears  - A list of gear algorithm names that are treated as center-pays for the purpose of the billing report
%
% ConfigSiteSettingsInput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ConfigSiteSettingsInput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'centerGears' }, ...
            { 'center_gears' });
    end
    properties(Dependent)
        centerGears
    end
    methods
        function obj = ConfigSiteSettingsInput(varargin)
            obj@flywheel.ModelBase(flywheel.model.ConfigSiteSettingsInput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'centerGears', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.centerGears)
                    obj.props_('center_gears') = p.Results.centerGears;
                end
            end
        end
        function result = get.centerGears(obj)
            if ismethod(obj, 'get_centerGears')
                result = obj.get_centerGears();
            else
                if isKey(obj.props_, 'center_gears')
                    result = obj.props_('center_gears');
                else
                    result = [];
                end
            end
        end
        function obj = set.centerGears(obj, value)
            obj.props_('center_gears') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'center_gears')
                result('center_gears') = flywheel.ModelBase.serializeValue(obj.props_('center_gears'), 'vector[char]');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'center_gears')
                result.centerGears = obj.props_('center_gears');
            else
                result.centerGears = [];
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
                if isKey(obj.props_, 'center_gears')
                    propList.centerGears = obj.props_('center_gears');
                else
                    propList.centerGears = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ConfigSiteSettingsInput;
            if isfield(json, 'center_gears')
                obj.props_('center_gears') = flywheel.ModelBase.deserializeValue(json.center_gears, 'vector[char]');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ConfigSiteSettingsInput')
                    obj = flywheel.model.ConfigSiteSettingsInput(obj);
                end
                if isKey(obj.props_, 'center_gears')
                end
            end
        end
    end
end
