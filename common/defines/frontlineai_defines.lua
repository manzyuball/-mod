--Hello, if you're looking to put this in a modpack, ask and link, but jokes on you, it's compatible in theory with literally every mod so you shouldn't have to put it in a modpack!
	NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 48 --default 100
	NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 1.0 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.
	--planning
	NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.1 --default ??
	NDefines.NAI.PLAN_VALUE_TO_EXECUTE = 0.2 --default ??
	--training
	NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.95 --default ??		-- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
	NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.05	--default ??	-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
	NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.95--default ??	-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
	NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.90	--default ??	-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime

	NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.2 --default 0.2				-- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.
	
	NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 1.0 --default 1.0					-- Factor for max number of units to assign to area defense orders
	NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 1.0	--default^			-- Factor for desired number of units to assign to area defense orders
	NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 1.0	--default^^				-- Factor for min number of units to assign to area defense orders

	NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0	--default 1.5			-- Factor for max number of units to assign to area front orders
	NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0	--default ^			-- Factor for desired number of units to assign to area front orders
	NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0	--default 1.0			-- Factor for min number of units to assign to area front orders

	NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0	--default 1.0	-- Factor for max number of units to assign to naval invasion orders
	NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0	--default ^		-- Factor for desired number of units to assign to naval invasion orders
	NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.0	--default ^^			-- Factor for min number of units to assign to naval invasion orders
	
	NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 15.0		--default 15.0				-- A factor applied to total front size and supply use. Primarily effects small fronts
	NDefines.NAI.MAX_DIST_PORT_RUSH = 20.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.
	
	NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7	--default 0.7		-- Cancel unit production if below this to get resources out to units in the field
	NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.7	--default 0.7				-- Cancel unit production if below this to get resources out to units in the field