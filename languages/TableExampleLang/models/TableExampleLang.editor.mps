<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5d8951df-e869-41ed-be9f-91457ab79615(TableExampleLang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="4qwj" ref="r:5c7b9581-2d70-4f55-9dd8-481523a6cef2(TableExampleLang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="1397920687865593407" name="de.slisson.mps.tables.structure.PartialTable" flags="ng" index="2r0Tta">
        <child id="1397920687865593523" name="cells" index="2r0Tv6" />
      </concept>
      <concept id="1397920687866011705" name="de.slisson.mps.tables.structure.QueryParameter_Node" flags="ng" index="2r2w_c" />
      <concept id="1397920687865844319" name="de.slisson.mps.tables.structure.HeadQuery" flags="ig" index="2r3VGE">
        <child id="4032373061957777955" name="insertNew" index="10bivc" />
        <child id="1515263624310665819" name="delete" index="3x7fTB" />
      </concept>
      <concept id="1397920687864997170" name="de.slisson.mps.tables.structure.TableNodeCollection" flags="ng" index="2reCL7">
        <child id="1397920687864997171" name="childTableNodes" index="2reCL6" />
      </concept>
      <concept id="1397920687864997153" name="de.slisson.mps.tables.structure.StaticHorizontal" flags="ng" index="2reCLk" />
      <concept id="1397920687864997163" name="de.slisson.mps.tables.structure.StaticVertical" flags="ng" index="2reCLu" />
      <concept id="1397920687864997143" name="de.slisson.mps.tables.structure.TableCell" flags="ng" index="2reCLy">
        <child id="1397920687865111420" name="columnHeader" index="2recC9" />
        <child id="1397920687865064647" name="editorCell" index="2reSmM" />
      </concept>
      <concept id="1397920687865064415" name="de.slisson.mps.tables.structure.ChildsVertical" flags="ng" index="2reSaE" />
      <concept id="1397920687865064509" name="de.slisson.mps.tables.structure.ChildCollection" flags="ng" index="2reSl8">
        <reference id="1397920687864997201" name="linkDeclaration" index="2reCK$" />
        <child id="2199447184407180854" name="rowHeaders" index="2YlbuT" />
      </concept>
      <concept id="1397920687864864270" name="de.slisson.mps.tables.structure.StaticHeader" flags="ng" index="2rfbtV">
        <property id="1397920687864864274" name="text" index="2rfbtB" />
      </concept>
      <concept id="1397920687864683158" name="de.slisson.mps.tables.structure.Table" flags="ng" index="2rfBfz">
        <child id="1397920687864865354" name="cells" index="2rf8GZ" />
      </concept>
      <concept id="4032373061957737357" name="de.slisson.mps.tables.structure.Parameter_Index" flags="ng" index="10bopy" />
      <concept id="4032373061957735279" name="de.slisson.mps.tables.structure.HeaderQuery_InsertNew" flags="ig" index="10boU0" />
      <concept id="1515263624310660132" name="de.slisson.mps.tables.structure.HeaderQuery_Delete" flags="ig" index="3x7d0o" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1227022196108" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAtElementOperation" flags="nn" index="2KedMh">
        <child id="1227022274197" name="index" index="2KewY8" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="24kQdi" id="1qqkUgiWHWv">
    <ref role="1XX52x" to="4qwj:1qqkUgiWHVM" resolve="Root" />
    <node concept="3EZMnI" id="1qqkUgiWHWx" role="2wV5jI">
      <node concept="2iRkQZ" id="1qqkUgiWHWy" role="2iSdaV" />
      <node concept="3F0ifn" id="1qqkUgiWHWB" role="3EZMnx">
        <property role="3F0ifm" value="Root" />
      </node>
      <node concept="3F0ifn" id="1qqkUgiWHWE" role="3EZMnx" />
      <node concept="3F0ifn" id="1qqkUgiXieN" role="3EZMnx">
        <property role="3F0ifm" value="child1" />
      </node>
      <node concept="3F0ifn" id="1qqkUgiXiJ2" role="3EZMnx" />
      <node concept="2rfBfz" id="1qqkUgiWI4w" role="3EZMnx">
        <node concept="2reCLu" id="1qqkUgiWVno" role="2rf8GZ">
          <node concept="2reSaE" id="1qqkUgiWVxC" role="2reCL6">
            <ref role="2reCK$" to="4qwj:1qqkUgiWHVQ" resolve="children1" />
            <node concept="2r3VGE" id="1qqkUgiWVxE" role="2YlbuT">
              <property role="TrG5h" value="foo" />
              <node concept="3clFbS" id="1qqkUgiWVxF" role="2VODD2">
                <node concept="3cpWs6" id="1qqkUgiWVyZ" role="3cqZAp">
                  <node concept="2OqwBi" id="1qqkUgiWYui" role="3cqZAk">
                    <node concept="2OqwBi" id="1qqkUgiWVJf" role="2Oq$k0">
                      <node concept="2r2w_c" id="1qqkUgiWV$y" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1qqkUgiWVWj" role="2OqNvi">
                        <ref role="3TtcxE" to="4qwj:1qqkUgiWHVQ" resolve="children1" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="1qqkUgiX0KY" role="2OqNvi">
                      <node concept="1bVj0M" id="1qqkUgiX0L0" role="23t8la">
                        <node concept="3clFbS" id="1qqkUgiX0L1" role="1bW5cS">
                          <node concept="3clFbF" id="1qqkUgiX0Xr" role="3cqZAp">
                            <node concept="2YIFZM" id="1qqkUgiX168" role="3clFbG">
                              <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                              <node concept="3cpWs3" id="1qqkUgiX37L" role="37wK5m">
                                <node concept="3cmrfG" id="1qqkUgiX37T" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="1qqkUgiX1BH" role="3uHU7B">
                                  <node concept="37vLTw" id="1qqkUgiX1iD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1qqkUgiX0L2" resolve="it" />
                                  </node>
                                  <node concept="2bSWHS" id="1qqkUgiX2bv" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1qqkUgiX0L2" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1qqkUgiX0L3" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10boU0" id="1qqkUgiX3tK" role="10bivc">
                <node concept="3clFbS" id="1qqkUgiX3tL" role="2VODD2">
                  <node concept="3clFbF" id="1qqkUgiX3JI" role="3cqZAp">
                    <node concept="2OqwBi" id="1qqkUgiX5Mi" role="3clFbG">
                      <node concept="2OqwBi" id="1qqkUgiX3RE" role="2Oq$k0">
                        <node concept="2r2w_c" id="1qqkUgiX3JH" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1qqkUgiX4iu" role="2OqNvi">
                          <ref role="3TtcxE" to="4qwj:1qqkUgiWHVQ" resolve="children1" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="1qqkUgiXaEV" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x7d0o" id="1qqkUgiXaYp" role="3x7fTB">
                <node concept="3clFbS" id="1qqkUgiXaYq" role="2VODD2">
                  <node concept="3clFbF" id="1qqkUgiXbpz" role="3cqZAp">
                    <node concept="2OqwBi" id="1qqkUgiXde3" role="3clFbG">
                      <node concept="2OqwBi" id="1qqkUgiXbxx" role="2Oq$k0">
                        <node concept="2r2w_c" id="1qqkUgiXbpy" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1qqkUgiXbIf" role="2OqNvi">
                          <ref role="3TtcxE" to="4qwj:1qqkUgiWHVQ" resolve="children1" />
                        </node>
                      </node>
                      <node concept="2KedMh" id="1qqkUgiXi8G" role="2OqNvi">
                        <node concept="10bopy" id="1qqkUgiXibK" role="2KewY8" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1qqkUgiXjhg" role="3EZMnx" />
      <node concept="3F0ifn" id="1qqkUgiXjol" role="3EZMnx">
        <property role="3F0ifm" value="child2" />
      </node>
      <node concept="3F0ifn" id="1qqkUgiXjvr" role="3EZMnx" />
      <node concept="2rfBfz" id="1qqkUgiXjHE" role="3EZMnx">
        <node concept="2reCLu" id="1qqkUgiXkfZ" role="2rf8GZ">
          <node concept="2reSaE" id="1qqkUgiXkg2" role="2reCL6">
            <ref role="2reCK$" to="4qwj:1qqkUgiWHVS" resolve="children2" />
            <node concept="2r3VGE" id="1qqkUgiXkg4" role="2YlbuT">
              <property role="TrG5h" value="foo2" />
              <node concept="3clFbS" id="1qqkUgiXkg5" role="2VODD2">
                <node concept="3cpWs6" id="1qqkUgiXkgN" role="3cqZAp">
                  <node concept="2OqwBi" id="1qqkUgiXngb" role="3cqZAk">
                    <node concept="2OqwBi" id="1qqkUgiXkw$" role="2Oq$k0">
                      <node concept="2r2w_c" id="1qqkUgiXkir" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1qqkUgiXkIc" role="2OqNvi">
                        <ref role="3TtcxE" to="4qwj:1qqkUgiWHVS" resolve="children2" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="1qqkUgiXp$M" role="2OqNvi">
                      <node concept="1bVj0M" id="1qqkUgiXp$O" role="23t8la">
                        <node concept="3clFbS" id="1qqkUgiXp$P" role="1bW5cS">
                          <node concept="3clFbF" id="1qqkUgiXpLf" role="3cqZAp">
                            <node concept="2YIFZM" id="1qqkUgiXqtb" role="3clFbG">
                              <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                              <node concept="3cpWs3" id="1qqkUgiXsi3" role="37wK5m">
                                <node concept="3cmrfG" id="1qqkUgiXsmG" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="1qqkUgiXqZ2" role="3uHU7B">
                                  <node concept="37vLTw" id="1qqkUgiXqDY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1qqkUgiXp$Q" resolve="it" />
                                  </node>
                                  <node concept="2bSWHS" id="1qqkUgiXrlK" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1qqkUgiXp$Q" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1qqkUgiXp$R" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10boU0" id="1qqkUgiXsvy" role="10bivc">
                <node concept="3clFbS" id="1qqkUgiXsvz" role="2VODD2">
                  <node concept="3clFbF" id="1qqkUgiXs$l" role="3cqZAp">
                    <node concept="2OqwBi" id="1qqkUgiXurv" role="3clFbG">
                      <node concept="2OqwBi" id="1qqkUgiXsGh" role="2Oq$k0">
                        <node concept="2r2w_c" id="1qqkUgiXs$k" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1qqkUgiXt35" role="2OqNvi">
                          <ref role="3TtcxE" to="4qwj:1qqkUgiWHVS" resolve="children2" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="1qqkUgiXwHP" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x7d0o" id="1qqkUgiXwZw" role="3x7fTB">
                <node concept="3clFbS" id="1qqkUgiXwZx" role="2VODD2">
                  <node concept="3clFbF" id="1qqkUgiXxew" role="3cqZAp">
                    <node concept="2OqwBi" id="1qqkUgiXzaw" role="3clFbG">
                      <node concept="2OqwBi" id="1qqkUgiXxnm" role="2Oq$k0">
                        <node concept="2r2w_c" id="1qqkUgiXxfb" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1qqkUgiXxM6" role="2OqNvi">
                          <ref role="3TtcxE" to="4qwj:1qqkUgiWHVS" resolve="children2" />
                        </node>
                      </node>
                      <node concept="2KedMh" id="1qqkUgiX_sQ" role="2OqNvi">
                        <node concept="10bopy" id="1qqkUgiX_vX" role="2KewY8" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1qqkUgiXAti">
    <ref role="1XX52x" to="4qwj:1qqkUgiWHVN" resolve="Child1" />
    <node concept="2r0Tta" id="1qqkUgiXAtk" role="2wV5jI">
      <node concept="2reCLk" id="1qqkUgiXAtn" role="2r0Tv6">
        <node concept="2reCLy" id="1qqkUgiXAtp" role="2reCL6">
          <node concept="3F0A7n" id="1qqkUgiXAtt" role="2reSmM">
            <ref role="1NtTu8" to="4qwj:1qqkUgiWHVV" resolve="c1Property1" />
          </node>
          <node concept="2rfbtV" id="1qqkUgiXAtw" role="2recC9">
            <property role="2rfbtB" value="C1 Property 1" />
          </node>
        </node>
        <node concept="2reCLy" id="1qqkUgiXAtB" role="2reCL6">
          <node concept="3F0A7n" id="1qqkUgiXAtK" role="2reSmM">
            <ref role="1NtTu8" to="4qwj:1qqkUgiWHVX" resolve="c2Properrty2" />
          </node>
          <node concept="2rfbtV" id="1qqkUgiXAtN" role="2recC9">
            <property role="2rfbtB" value="C1 Property 2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1qqkUgiXAuf">
    <ref role="1XX52x" to="4qwj:1qqkUgiWHVO" resolve="Child2" />
    <node concept="2r0Tta" id="1qqkUgiXAuh" role="2wV5jI">
      <node concept="2reCLk" id="1qqkUgiXAuk" role="2r0Tv6">
        <node concept="2reCLy" id="1qqkUgiXAum" role="2reCL6">
          <node concept="3F0A7n" id="1qqkUgiXAuq" role="2reSmM">
            <ref role="1NtTu8" to="4qwj:1qqkUgiWHW0" resolve="c2Property1" />
          </node>
          <node concept="2rfbtV" id="1qqkUgiXAut" role="2recC9">
            <property role="2rfbtB" value="C2 Property 1" />
          </node>
        </node>
        <node concept="2reCLy" id="1qqkUgiXAu$" role="2reCL6">
          <node concept="3F0A7n" id="1qqkUgiXAuH" role="2reSmM">
            <ref role="1NtTu8" to="4qwj:1qqkUgiWHW2" resolve="c2Property2" />
          </node>
          <node concept="2rfbtV" id="1qqkUgiXAuK" role="2recC9">
            <property role="2rfbtB" value="C2 Property 2" />
          </node>
        </node>
        <node concept="2reCLy" id="1qqkUgiXO7$" role="2reCL6">
          <node concept="3F2HdR" id="1qqkUgiXO7K" role="2reSmM">
            <ref role="1NtTu8" to="4qwj:1qqkUgiXO7P" resolve="usesItem" />
            <node concept="2iRkQZ" id="1qqkUgiXO7M" role="2czzBx" />
          </node>
          <node concept="2rfbtV" id="1qqkUgiY31c" role="2recC9">
            <property role="2rfbtB" value="Uses Items" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1qqkUgiXO7b">
    <ref role="1XX52x" to="4qwj:1qqkUgiXO6G" resolve="UsesItem" />
    <node concept="1iCGBv" id="1qqkUgiXO7d" role="2wV5jI">
      <ref role="1NtTu8" to="4qwj:1qqkUgiXO6J" resolve="item" />
      <node concept="1sVBvm" id="1qqkUgiXO7f" role="1sWHZn">
        <node concept="3F0A7n" id="1qqkUgiXO7p" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

