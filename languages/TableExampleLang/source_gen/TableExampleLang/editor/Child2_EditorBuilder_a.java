package TableExampleLang.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import de.slisson.mps.tables.runtime.cells.ChildsTracker;
import de.slisson.mps.tables.runtime.gridmodel.Grid;
import jetbrains.mps.openapi.editor.style.Style;
import de.slisson.mps.tables.runtime.style.ITableStyleFactory;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import de.slisson.mps.tables.runtime.cells.PartialTableEditor;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import de.slisson.mps.tables.runtime.gridmodel.EditorCellGridLeaf;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.openapi.editor.menus.transformation.SPropertyInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.SPropertyAccessor;
import jetbrains.mps.nodeEditor.cellMenu.SPropertySubstituteInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.lang.core.behavior.PropertyAttribute__BehaviorDescriptor;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.openapi.editor.update.AttributeKind;
import de.slisson.mps.tables.runtime.gridmodel.HeaderGrid;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import de.slisson.mps.tables.runtime.gridmodel.Header;
import de.slisson.mps.tables.runtime.gridmodel.EditorCellHeader;
import de.slisson.mps.tables.runtime.gridmodel.StringHeaderReference;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

/*package*/ class Child2_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public Child2_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createPartialTable_1();
  }

  private jetbrains.mps.nodeEditor.cells.EditorCell createPartialTable_0(final EditorContext editorContext, final SNode node) {
    ChildsTracker childsTracker = null;

    try {
      ChildsTracker.pushNewInstance();
      final Grid grid = createStaticHorizontal_zcqsnv_a0(editorContext, node);
      final Style style = new ITableStyleFactory() {
        public Style createStyle(final int columnIndex, final int rowIndex) {
          Style style = new StyleImpl();
          final EditorCell editorCell = null;
          return style;
        }
      }.createStyle(0, 0);
      grid.setStyle(style);

      childsTracker = ChildsTracker.popInstance();
      if (childsTracker == null) {
        return new EditorCell_Error(editorContext, node, "not inside table");
      }
      PartialTableEditor editorCell = new PartialTableEditor(editorContext, node, grid);
      ChildsTracker.getInstance().registerChild(editorCell);
      editorCell.initChilds(childsTracker);

      editorCell.setCellId("PartialTable_zcqsnv_a");
      editorCell.setBig(true);
      setCellContext(editorCell);
      editorCell.init();
      return editorCell;
    } catch (RuntimeException ex) {
      if (childsTracker == null) {
        ChildsTracker.popInstance();
      }
      throw ex;
    }
  }
  private EditorCell createPartialTable_1() {
    return createPartialTable_0(getEditorContext(), myNode);
  }
  public Grid createStaticHorizontal_zcqsnv_a0(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();

    List<Grid> children = new ArrayList<Grid>(3);
    if (true) {
      children.add(createTableCell_zcqsnv_a0a(editorContext, node));
    }
    if (true) {
      children.add(createTableCell_zcqsnv_b0a(editorContext, node));
    }
    if (true) {
      children.add(createTableCell_zcqsnv_c0a(editorContext, node));
    }
    int maxHeight = grid.getRowHeadersSizeY();
    for (Grid child : ListSequence.fromList(children)) {
      maxHeight = Math.max(maxHeight, child.getSizeY());
    }
    for (int x = 0; x < children.size(); x++) {
      if (maxHeight > 0) {
        children.get(x).setSpanY(maxHeight);
      }
      grid.setElement(x, 0, children.get(x));
    }
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    grid.setStyle(style);
    return grid;
  }
  public Grid createTableCell_zcqsnv_a0a(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createProperty_0();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }
    grid.setColumnHeaders(0, 0, createStaticHeader_zcqsnv_a0a0(editorContext, node));

    return grid;
  }
  private EditorCell createProperty_0() {
    getCellFactory().pushCellContext();
    try {
      final SProperty property = PROPS.c2Property1$RME0;
      getCellFactory().setPropertyInfo(new SPropertyInfo(myNode, property));
      EditorCell_Property editorCell = EditorCell_Property.create(getEditorContext(), new SPropertyAccessor(myNode, property, false, false), myNode);
      editorCell.setDefaultText("<no c2Property1>");
      editorCell.setCellId("property_c2Property1");
      editorCell.setSubstituteInfo(new SPropertySubstituteInfo(editorCell, property));
      setCellContext(editorCell);
      Iterable<SNode> propertyAttributes = SNodeOperations.ofConcept(new IAttributeDescriptor.AllAttributes().list(myNode), CONCEPTS.PropertyAttribute$Gb);
      Iterable<SNode> currentPropertyAttributes = Sequence.fromIterable(propertyAttributes).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return Objects.equals(PropertyAttribute__BehaviorDescriptor.getProperty_id1avfQ4BBzOo.invoke(it), property);
        }
      });
      if (Sequence.fromIterable(currentPropertyAttributes).isNotEmpty()) {
        EditorManager manager = EditorManager.getInstanceFromContext(getEditorContext());
        return manager.createNodeRoleAttributeCell(Sequence.fromIterable(currentPropertyAttributes).first(), AttributeKind.PROPERTY, editorCell);
      } else
      return editorCell;
    } finally {
      getCellFactory().popCellContext();
    }
  }
  public HeaderGrid createStaticHeader_zcqsnv_a0a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "C2 Property 1", false);
    Header header = new EditorCellHeader(new StringHeaderReference("C2 Property 1"), cell);
    header.setLabel("C2 Property 1");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createTableCell_zcqsnv_b0a(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createProperty_1();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }
    grid.setColumnHeaders(0, 0, createStaticHeader_zcqsnv_a1a0(editorContext, node));

    return grid;
  }
  private EditorCell createProperty_1() {
    getCellFactory().pushCellContext();
    try {
      final SProperty property = PROPS.c2Property2$RN82;
      getCellFactory().setPropertyInfo(new SPropertyInfo(myNode, property));
      EditorCell_Property editorCell = EditorCell_Property.create(getEditorContext(), new SPropertyAccessor(myNode, property, false, false), myNode);
      editorCell.setDefaultText("<no c2Property2>");
      editorCell.setCellId("property_c2Property2");
      editorCell.setSubstituteInfo(new SPropertySubstituteInfo(editorCell, property));
      setCellContext(editorCell);
      Iterable<SNode> propertyAttributes = SNodeOperations.ofConcept(new IAttributeDescriptor.AllAttributes().list(myNode), CONCEPTS.PropertyAttribute$Gb);
      Iterable<SNode> currentPropertyAttributes = Sequence.fromIterable(propertyAttributes).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return Objects.equals(PropertyAttribute__BehaviorDescriptor.getProperty_id1avfQ4BBzOo.invoke(it), property);
        }
      });
      if (Sequence.fromIterable(currentPropertyAttributes).isNotEmpty()) {
        EditorManager manager = EditorManager.getInstanceFromContext(getEditorContext());
        return manager.createNodeRoleAttributeCell(Sequence.fromIterable(currentPropertyAttributes).first(), AttributeKind.PROPERTY, editorCell);
      } else
      return editorCell;
    } finally {
      getCellFactory().popCellContext();
    }
  }
  public HeaderGrid createStaticHeader_zcqsnv_a1a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "C2 Property 2", false);
    Header header = new EditorCellHeader(new StringHeaderReference("C2 Property 2"), cell);
    header.setLabel("C2 Property 2");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createTableCell_zcqsnv_c0a(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createRefNodeList_0();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }
    grid.setColumnHeaders(0, 0, createStaticHeader_zcqsnv_a2a0(editorContext, node));

    return grid;
  }
  private EditorCell createRefNodeList_0() {
    AbstractCellListHandler handler = new usesItemListHandler_zcqsnv_a2a0(myNode, getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Vertical(), false);
    editorCell.setCellId("refNodeList_usesItem");
    editorCell.setSRole(handler.getElementSRole());
    return editorCell;
  }
  private static class usesItemListHandler_zcqsnv_a2a0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public usesItemListHandler_zcqsnv_a2a0(SNode ownerNode, EditorContext context) {
      super(context, false);
      myNode = ownerNode;
    }

    @NotNull
    public SNode getNode() {
      return myNode;
    }
    public SContainmentLink getSLink() {
      return LINKS.usesItem$S94I;
    }
    public SAbstractConcept getChildSConcept() {
      return CONCEPTS.UsesItem$p8;
    }

    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell, false);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(usesItemListHandler_zcqsnv_a2a0.this.getNode(), LINKS.usesItem$S94I));
      try {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell();
        installElementCellActions(null, emptyCell, true);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }

    private static final Object OBJ = new Object();

    public void installElementCellActions(SNode elementNode, EditorCell elementCell, boolean isEmptyCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET) == null) {
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, OBJ);
          elementCell.setSubstituteInfo((isEmptyCell ? new SEmptyContainmentSubstituteInfo(elementCell) : new SChildSubstituteInfo(elementCell)));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, OBJ);
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
        }
      }
      if (elementCell.getUserObject(ELEMENT_CELL_BACKSPACE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(ELEMENT_CELL_BACKSPACE_SET, OBJ);
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, OBJ);
        }
      }
    }
  }
  public HeaderGrid createStaticHeader_zcqsnv_a2a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "Uses Items", false);
    Header header = new EditorCellHeader(new StringHeaderReference("Uses Items"), cell);
    header.setLabel("Uses Items");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }

  private static final class PROPS {
    /*package*/ static final SProperty c2Property1$RME0 = MetaAdapterFactory.getProperty(0xc138eb89f4c94197L, 0x9e50c9be86419d33L, 0x169a53a412f2def4L, 0x169a53a412f2df00L, "c2Property1");
    /*package*/ static final SProperty c2Property2$RN82 = MetaAdapterFactory.getProperty(0xc138eb89f4c94197L, 0x9e50c9be86419d33L, 0x169a53a412f2def4L, 0x169a53a412f2df02L, "c2Property2");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept PropertyAttribute$Gb = MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da56L, "jetbrains.mps.lang.core.structure.PropertyAttribute");
    /*package*/ static final SConcept UsesItem$p8 = MetaAdapterFactory.getConcept(0xc138eb89f4c94197L, 0x9e50c9be86419d33L, 0x169a53a412f741acL, "TableExampleLang.structure.UsesItem");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink usesItem$S94I = MetaAdapterFactory.getContainmentLink(0xc138eb89f4c94197L, 0x9e50c9be86419d33L, 0x169a53a412f2def4L, 0x169a53a412f741f5L, "usesItem");
  }
}
