/*
 *  StatCvs-XML - XML output for StatCvs.
 *
 *  Copyright by Steffen Pingel, Tammo van Lessen.
 *
 *  This program is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU General Public License
 *  version 2 as published by the Free Software Foundation.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

package net.sf.statsvn.renderer;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Stroke;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;

import net.sf.statsvn.model.SymbolicName;

import org.jfree.chart.annotations.XYAnnotation;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.PlotRenderingInfo;
import org.jfree.chart.plot.XYPlot;
import org.jfree.text.TextUtilities;
import org.jfree.ui.RectangleEdge;
import org.jfree.ui.TextAnchor;


/**
 * SymbolicNameAnnotation
 * 
 * Provides symbolic name annotations for XYPlots with java.util.Date
 * objects on the domain axis.
 * 
 * @author Tammo van Lessen
 */
public class SymbolicNameAnnotation implements XYAnnotation {

    private final Color linePaint = Color.GRAY;
    private final Color textPaint = Color.DARK_GRAY;
    private final Stroke stroke = new BasicStroke(1.5f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 10f, new float[] {3.5f}, 0.0f);
    private final Font font = new Font("Dialog", Font.PLAIN, 9);
    
    private SymbolicName symbolicName;

    /**
     * Creates an annotation for a symbolic name.
     * Paints a gray dashed vertical line at the symbolic names
     * date position and draws its name at the top left.
     * 
     * @param symbolicName
     */
    public SymbolicNameAnnotation(final SymbolicName symbolicName) {
        this.symbolicName = symbolicName;
    }
    
    /**
     * @see org.jfree.chart.annotations.XYAnnotation#draw(java.awt.Graphics2D, org.jfree.chart.plot.XYPlot, 
     * java.awt.geom.Rectangle2D, org.jfree.chart.axis.ValueAxis, org.jfree.chart.axis.ValueAxis, int, org.jfree.chart.plot.PlotRenderingInfo)
     */
    public void draw(final Graphics2D g2d, final XYPlot xyPlot, final Rectangle2D dataArea, final ValueAxis domainAxis, final ValueAxis rangeAxis, 
    		final int rendererIndex, final PlotRenderingInfo info) {
        final PlotOrientation orientation = xyPlot.getOrientation();
        
		// don't draw the annotation if symbolic names date is out of axis' bounds.
		if (domainAxis.getUpperBound() < symbolicName.getDate().getTime()
			|| domainAxis.getLowerBound() > symbolicName.getDate().getTime()) {
		
			return;
		}
		
        final RectangleEdge domainEdge = Plot.resolveDomainAxisLocation(
                                            xyPlot.getDomainAxisLocation(),
                                            orientation);
        final RectangleEdge rangeEdge = Plot.resolveRangeAxisLocation(
                                            xyPlot.getRangeAxisLocation(), 
                                            orientation);

        final float x = (float)domainAxis.valueToJava2D(
                                        symbolicName.getDate().getTime(), 
                                        dataArea, 
                                        domainEdge);
        final float y1 = (float)rangeAxis.valueToJava2D(
                                        rangeAxis.getUpperBound(),
                                        dataArea, 
                                        rangeEdge);
        final float y2 = (float)rangeAxis.valueToJava2D(
                                        rangeAxis.getLowerBound(), 
                                        dataArea, 
                                        rangeEdge);            
        
        g2d.setPaint(linePaint);
        g2d.setStroke(stroke);
        
        final Line2D line = new Line2D.Float(x, y1, x, y2);
        g2d.draw(line);
        
        final float anchorX = x;
        final float anchorY = y1 + 2;

        g2d.setFont(font);
        g2d.setPaint(textPaint);

        /*g2d.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, 
                             RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);*/
                             
        TextUtilities.drawRotatedString(
            symbolicName.getName(), 
            g2d,
            anchorX, 
            anchorY,
            TextAnchor.BOTTOM_RIGHT,
            -Math.PI/2,
            TextAnchor.BOTTOM_RIGHT
        );
    }
    
}