package edu.wisc.cs.sdn.apps.l3routing;

import net.floodlightcontroller.core.module.IFloodlightService;

public interface IL3Routing extends IFloodlightService
{
	/**
	 * Get the table in which this application installs rules.
	 */
	public byte getTable();
}
