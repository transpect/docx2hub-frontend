<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step" 
  xmlns:docx2hub="http://transpect.io/docx2hub"
  version="1.0"
  name="docx2hub-frontend"
  type="docx2hub:frontend">
  
  <p:documentation>
    An XProc pipeline which implements the docx2hub library.
  </p:documentation>
  
  <p:output port="result" primary="true">
    <p:pipe port="result" step="docx2hub"/>
  </p:output>

  <p:output port="report" primary="false" sequence="true">
    <p:pipe port="report" step="docx2hub"/>
  </p:output>

  <p:output port="zip-manifest" primary="false">
    <p:pipe port="zip-manifest" step="docx2hub"/>
  </p:output>
  
  <p:option name="docx" required="true"/>
  <p:option name="debug" select="'no'"/>
  <p:option name="debug-dir-uri" select="'debug'"/>
  <p:option name="status-dir-uri" select="'status'"/>
  
  <p:import href="http://transpect.io/docx2hub/xpl/docx2hub.xpl"/>
  
  <docx2hub:convert name="docx2hub" mml-space-handling="xml-space">
    <p:documentation>Converts DOCX to Hub XML.</p:documentation>
    <p:with-option name="docx" select="$docx"/>
    <p:with-option name="debug" select="$debug"/>
    <p:with-option name="debug-dir-uri" select="$debug-dir-uri"/>
    <p:with-option name="status-dir-uri" select="$status-dir-uri"/>
  </docx2hub:convert>
  
  <p:sink/>
  
</p:declare-step>
