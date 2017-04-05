# docx2hub-frontend
Implements the [docx2hub](https://github.com/transpect/docx2hub) library to convert from docx to XML.

## Introduction

Considering this [hello word example](https://github.com/transpect/docx2hub-frontend/tree/master/sample), docx2hub will generate flat [Hub XML with CSSa XML attributes](http://publishinggeekly.com/wp-content/uploads/2013/01/CSSa.pdf). 

```xml
<hub xmlns="http://docbook.org/ns/docbook" 
  xmlns:css="http://www.w3.org/1996/css"
  xml:base="file:///C:/cygwin64/home/kraetke/docx2hub-frontend/sample/hello-word.hub.xml" 
  xml:lang="de" 
  css:rule-selection-attribute="role"
  css:version="3.0-variant le-tex_Hub-1.2" 
  version="5.1-variant le-tex_Hub-1.2">
  <info>
    <keywordset role="hub">
      <!-- (...) hub format properties -->
    </keywordset>
    <keywordset role="docProps">
      <!-- (...) document properties -->
    </keywordset>
    <css:rules>
      <css:rule layout-type="para" native-name="heading 1" 
        css:font-size="14pt" css:font-family="Calibri" 
        css:page-break-after="avoid" css:margin-top="24pt" 
        css:margin-bottom="0pt" remap="h1" css:font-weight="bold" 
        css:color="#365F91" name="berschrift1"/>
    </css:rules>
  </info>
  <para role="berschrift1"><phrase css:font-style="italic">Hello Word!</phrase></para>
</hub>

```

## Requirements

At least Java 1.7 is required.

## Clone this project

This project depends on Git submodules. Therefore you have to clone it with the `--recursive` option to get the submodules, too:

```
git clone https://github.com/transpect/docx2hub-frontend --recursive
```

## Invocation

### Bash

For convenient use on command line, we provide a simple Bash script. You can run it in this way:
```
`./docx2hub.sh sample/hello-word.docx
```

### Calabash

We provide also Bash and Windows Batch scripts to invoke the XProc pipeline directly:

```
./calabash.sh -o result=sample/hello-word.xml xpl/docx2hub-frontend.xpl docx=sample/hello-word.docx
```

## Include docx2hub in your XProc project

Please refer to this [tutorial](http://transpect.github.io/getting-started.html) for a more extensive documentation.


## Application Support

Currently docx files from the following applications are supported:

* Microsoft Word
* LibreOffice
* Google Docs
