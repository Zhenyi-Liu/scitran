% SearchSaveSearch
%
% SearchSaveSearch Properties:
%    label        - Application-specific label
%    search      
%    id           - Unique database ID
%    uid          - A user database ID
%    created      - Creation time (automatically set)
%    modified     - Last modification time (automatically updated)
%    permissions 
%
% SearchSaveSearch Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef SearchSaveSearch < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'label', 'search', 'id', 'uid', 'created', 'modified', 'permissions' }, ...
            { 'label', 'search', '_id', 'uid', 'created', 'modified', 'permissions' });
    end
    properties(Dependent)
        label
        search
        id
        uid
        created
        modified
        permissions
    end
    methods
        function obj = SearchSaveSearch(varargin)
            obj@flywheel.ModelBase(flywheel.model.SearchSaveSearch.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'label', []);
                addParameter(p, 'search', []);
                addParameter(p, 'id', []);
                addParameter(p, 'uid', []);
                addParameter(p, 'created', []);
                addParameter(p, 'modified', []);
                addParameter(p, 'permissions', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.search)
                    obj.props_('search') = p.Results.search;
                end
                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
                end
                if ~isempty(p.Results.uid)
                    obj.props_('uid') = p.Results.uid;
                end
                if ~isempty(p.Results.created)
                    obj.props_('created') = p.Results.created;
                end
                if ~isempty(p.Results.modified)
                    obj.props_('modified') = p.Results.modified;
                end
                if ~isempty(p.Results.permissions)
                    obj.props_('permissions') = p.Results.permissions;
                end
            end
        end
        function result = get.label(obj)
            if ismethod(obj, 'get_label')
                result = obj.get_label();
            else
                if isKey(obj.props_, 'label')
                    result = obj.props_('label');
                else
                    result = [];
                end
            end
        end
        function obj = set.label(obj, value)
            obj.props_('label') = value;
        end
        function result = get.search(obj)
            if ismethod(obj, 'get_search')
                result = obj.get_search();
            else
                if isKey(obj.props_, 'search')
                    result = obj.props_('search');
                else
                    result = [];
                end
            end
        end
        function obj = set.search(obj, value)
            obj.props_('search') = value;
        end
        function result = get.id(obj)
            if ismethod(obj, 'get_id')
                result = obj.get_id();
            else
                if isKey(obj.props_, '_id')
                    result = obj.props_('_id');
                else
                    result = [];
                end
            end
        end
        function obj = set.id(obj, value)
            obj.props_('_id') = value;
        end
        function result = get.uid(obj)
            if ismethod(obj, 'get_uid')
                result = obj.get_uid();
            else
                if isKey(obj.props_, 'uid')
                    result = obj.props_('uid');
                else
                    result = [];
                end
            end
        end
        function obj = set.uid(obj, value)
            obj.props_('uid') = value;
        end
        function result = get.created(obj)
            if ismethod(obj, 'get_created')
                result = obj.get_created();
            else
                if isKey(obj.props_, 'created')
                    result = obj.props_('created');
                else
                    result = [];
                end
            end
        end
        function obj = set.created(obj, value)
            obj.props_('created') = value;
        end
        function result = get.modified(obj)
            if ismethod(obj, 'get_modified')
                result = obj.get_modified();
            else
                if isKey(obj.props_, 'modified')
                    result = obj.props_('modified');
                else
                    result = [];
                end
            end
        end
        function obj = set.modified(obj, value)
            obj.props_('modified') = value;
        end
        function result = get.permissions(obj)
            if ismethod(obj, 'get_permissions')
                result = obj.get_permissions();
            else
                if isKey(obj.props_, 'permissions')
                    result = obj.props_('permissions');
                else
                    result = [];
                end
            end
        end
        function obj = set.permissions(obj, value)
            obj.props_('permissions') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'label')
                result('label') = flywheel.ModelBase.serializeValue(obj.props_('label'), 'char');
            end
            if isKey(obj.props_, 'search')
                result('search') = obj.props_('search').toJson();
            end
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
            if isKey(obj.props_, 'uid')
                result('uid') = flywheel.ModelBase.serializeValue(obj.props_('uid'), 'char');
            end
            if isKey(obj.props_, 'created')
                result('created') = flywheel.ModelBase.serializeValue(obj.props_('created'), 'datetime');
            end
            if isKey(obj.props_, 'modified')
                result('modified') = flywheel.ModelBase.serializeValue(obj.props_('modified'), 'datetime');
            end
            if isKey(obj.props_, 'permissions')
                result('permissions') = flywheel.ModelBase.cellmap(@toJson, obj.props_('permissions'));
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'label')
                result.label = obj.props_('label');
            else
                result.label = [];
            end
            if isKey(obj.props_, 'search')
                result.search = struct(obj.props_('search'));
            else
                result.search = [];
            end
            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
            end
            if isKey(obj.props_, 'uid')
                result.uid = obj.props_('uid');
            else
                result.uid = [];
            end
            if isKey(obj.props_, 'created')
                result.created = obj.props_('created');
            else
                result.created = [];
            end
            if isKey(obj.props_, 'modified')
                result.modified = obj.props_('modified');
            else
                result.modified = [];
            end
            if isKey(obj.props_, 'permissions')
                result.permissions = flywheel.ModelBase.cellmap(@struct, obj.props_('permissions'));
            else
                result.permissions = [];
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
                if isKey(obj.props_, 'label')
                    propList.label = obj.props_('label');
                else
                    propList.label = [];
                end
                if isKey(obj.props_, 'search')
                    propList.search = obj.props_('search');
                else
                    propList.search = [];
                end
                if isKey(obj.props_, '_id')
                    propList.id = obj.props_('_id');
                else
                    propList.id = [];
                end
                if isKey(obj.props_, 'uid')
                    propList.uid = obj.props_('uid');
                else
                    propList.uid = [];
                end
                if isKey(obj.props_, 'created')
                    propList.created = obj.props_('created');
                else
                    propList.created = [];
                end
                if isKey(obj.props_, 'modified')
                    propList.modified = obj.props_('modified');
                else
                    propList.modified = [];
                end
                if isKey(obj.props_, 'permissions')
                    propList.permissions = obj.props_('permissions');
                else
                    propList.permissions = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.SearchSaveSearch;
            if isfield(json, 'label')
                obj.props_('label') = flywheel.ModelBase.deserializeValue(json.label, 'char');
            end
            if isfield(json, 'search')
                obj.props_('search') = flywheel.model.SearchQuery.fromJson(json.search, context);
            end
            if isfield(json, 'x0x5Fid')
                obj.props_('_id') = flywheel.ModelBase.deserializeValue(json.x0x5Fid, 'char');
            end
            if isfield(json, 'uid')
                obj.props_('uid') = flywheel.ModelBase.deserializeValue(json.uid, 'char');
            end
            if isfield(json, 'created')
                obj.props_('created') = flywheel.ModelBase.deserializeValue(json.created, 'datetime');
            end
            if isfield(json, 'modified')
                obj.props_('modified') = flywheel.ModelBase.deserializeValue(json.modified, 'datetime');
            end
            if isfield(json, 'permissions')
                obj.props_('permissions') = flywheel.ModelBase.cellmap(@(x) flywheel.model.Permission.fromJson(x, context), json.permissions);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.SearchSaveSearch')
                    obj = flywheel.model.SearchSaveSearch(obj);
                end
                if isKey(obj.props_, 'label')
                end
                if isKey(obj.props_, 'search')
                    obj.props_('search') =  flywheel.model.SearchQuery.ensureIsInstance(obj.props_('search'));
                end
                if isKey(obj.props_, '_id')
                end
                if isKey(obj.props_, 'uid')
                end
                if isKey(obj.props_, 'created')
                end
                if isKey(obj.props_, 'modified')
                end
                if isKey(obj.props_, 'permissions')
                    obj.props_('permissions') = flywheel.ModelBase.cellmap(@flywheel.model.Permission.ensureIsInstance, obj.props_('permissions'));
                end
            end
        end
    end
end
