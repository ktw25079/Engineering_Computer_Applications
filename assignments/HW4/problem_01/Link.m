classdef Link < handle
    properties
        length
        th_0
        th
        joint_pos
    end
    properties (Dependent)
        end_pos
    end
    methods
        function obj=Link(length,initial_angle,joint_pos)
            validateattributes(length,{'numeric'},{'scalar','positive','finite'});
            validateattributes(initial_angle,{'numeric'},{'scalar','finite'});
            obj.length=length; obj.th_0=initial_angle; obj.th=initial_angle;
            obj.update_joint(joint_pos);
        end
        function endpoint=get.end_pos(obj)
            endpoint=obj.joint_pos+obj.length*[cos(obj.th) sin(obj.th)];
        end
        function update_angle(obj,angle)
            validateattributes(angle,{'numeric'},{'scalar','finite'}); obj.th=angle;
        end
        function update_joint(obj,position)
            validateattributes(position,{'numeric'},{'vector','numel',2,'finite'});
            obj.joint_pos=reshape(position,1,2);
        end
        function h=plot_link(obj,color,ax)
            if nargin<3, ax=gca; end
            if nargin<2, color='b'; end
            p=[obj.joint_pos;obj.end_pos];
            h=plot(ax,p(:,1),p(:,2),'-o','Color',color,'LineWidth',2);
        end
    end
end
