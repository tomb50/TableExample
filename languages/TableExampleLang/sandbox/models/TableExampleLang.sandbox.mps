<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:deed91a8-6dbf-4ce1-96d6-4b48dd758c4b(TableExampleLang.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="c138eb89-f4c9-4197-9e50-c9be86419d33" name="TableExampleLang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="c138eb89-f4c9-4197-9e50-c9be86419d33" name="TableExampleLang">
      <concept id="1628706179405504244" name="TableExampleLang.structure.Child2" flags="ng" index="4q8Pg">
        <child id="1628706179405791733" name="usesItem" index="4rh9h" />
      </concept>
      <concept id="1628706179405504242" name="TableExampleLang.structure.Root" flags="ng" index="4q8Pm">
        <child id="1628706179405504248" name="children2" index="4q8Ps" />
      </concept>
      <concept id="1628706179405791660" name="TableExampleLang.structure.UsesItem" flags="ng" index="4rh88" />
      <concept id="1628706179405791657" name="TableExampleLang.structure.ExternalItem" flags="ng" index="4rh8d" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="4q8Pm" id="1qqkUgiXO6$">
    <node concept="4q8Pg" id="1qqkUgiXO6_" role="4q8Ps">
      <node concept="4rh88" id="1qqkUgiYcMS" role="4rh9h" />
    </node>
  </node>
  <node concept="4rh8d" id="1qqkUgiY31a">
    <property role="TrG5h" value="Apple" />
  </node>
  <node concept="4rh8d" id="1qqkUgiY31b">
    <property role="TrG5h" value="Orange" />
  </node>
</model>

