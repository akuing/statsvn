/*
	StatCvs - CVS statistics generation 
	Copyright (C) 2002  Lukasz Pekacki <lukasz@pekacki.de>
	http://statcvs.sf.net/
    
	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.

	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
    
	$RCSfile: AuthorColumn.java,v $
	$Date: 2003/04/19 23:09:27 $
*/
package net.sf.statsvn.reportmodel;

import net.sf.statsvn.Messages;
import net.sf.statsvn.model.Author;
import net.sf.statsvn.renderer.TableCellRenderer;

/**
 * A table column containing author names
 * 
 * @author Richard Cyganiak <rcyg@gmx.de>
 * @version $Id: AuthorColumn.java,v 1.2 2003/04/19 23:09:27 cyganiak Exp $
 */
public class AuthorColumn extends GenericColumn {

	/**
	 * Creates a new author column
	 */
	public AuthorColumn() {
		super(Messages.getString("COLUMN_AUTHOR"));
	}


	/**
	 * @see net.sf.statsvn.reportmodel.Column#renderCell
	 */
	public void renderCell(final int rowIndex, final TableCellRenderer renderer) {
		renderer.renderAuthorCell((Author) getValue(rowIndex));
	}
}