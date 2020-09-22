# RTemplate genereted code.
############# RT standard functions ########

printf = function(...) {
  cat(sprintf(...))
}
quiet.source = function(..., comment="# ") {
  f=textConnection("quiet.source.text","w");
  sink(f); ret=source(...); sink();
  close(f);
  cat(paste(comment,quiet.source.text,"
",sep=""),sep="")
  ret
}
if (!exists("include.dir")) include.dir=NULL;
source = function(file,...) {
  pot = c(file, paste(include.dir,file,sep="/"))
  sel = sapply(pot,file.exists)
  sel = which(sel)
  if (length(sel) < 1)
    stop("file not found:",file," in include directories:",paste(include.dir,collapse=","))
  newfile=pot[sel[1]]
  base::source(file=newfile,...)
}
add.include.dir = function(dir) {
  if (substr(dir,1,1) != "/") dir = paste(getwd(),dir,sep="/");
  include.dir <<- c(include.dir,dir)
}
linemark=function(...) {invisible(NULL)}

############# Parameters and settings ######

MODEL="d2q9_pf_velocity_debug"
Options=list(GF=FALSE,RT=FALSE,Outflow=FALSE,GuoCM=FALSE,debug=TRUE,BGK=FALSE,CM=FALSE,autosym=FALSE)
add.include.dir("tools")
add.include.dir("src")
add.include.dir("models/multiphase/d2q9_pf_velocity")
setwd("wiki/")

############# Code from Rt file ############


  NEED_OFFSETS = FALSE
  source("conf.R")
  branch = git_branch("..")
  options(width=4000)
  source("stensil.plot.R")

  glob_mx = max(abs(c(
    Fields$maxx, Fields$minx,
    Fields$maxy, Fields$miny,
    Fields$maxz, Fields$minz)))
  glob_only2d = max(abs(c(Fields$maxz, -Fields$minz))) < 1
    

  stensil = function(tab,mx=0,only2d=FALSE,pref="st_") {
    ret = mark.stensil(tab, mx=glob_mx, only2d=glob_only2d, pref="images/st_")
    paste("![stencil](",ret,")",sep="")
  }


cat( "\n" );
cat( "\n" );
cat( "## Description\n" );
cat( "" );
 cat(Description$long,sep="\n") 
cat( "\n" );
cat( "\n" );
cat( "## Details\n" );
cat( "[Model description files](Model description) files for this model:\n" );
cat( "[Dynamics.c](https://github.com/llaniewski/TCLB/blob/" );
cat(sprintf("%s",   branch   ));
cat( "/src/" );
cat(sprintf("%s",   MODEL   ));
cat( "/Dynamics.c.Rt)\n" );
cat( "[Dynamics.R](https://github.com/llaniewski/TCLB/blob/" );
cat(sprintf("%s",   branch   ));
cat( "/src/" );
cat(sprintf("%s",   MODEL   ));
cat( "/Dynamics.R)\n" );
cat( "\n" );
cat( "### [Zonal Settings](Settings)\n" );
cat( "\n" );
cat( "| Name | Comment |\n" );
cat( "| --- | --- |\n" );
cat( "" );

  for (s in rows(ZoneSettings)) {
    cat("", paste("`",s$name,"`",sep=""), s$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "\n" );
cat( "### [Global Settings](Settings)\n" );
cat( "\n" );
cat( "| Name | Derived | Comment |\n" );
cat( "| --- | --- | --- |\n" );
cat( "" );

  for (s in rows(Settings)) {
    if (s$name %in% Settings$derived) {
      eq = Settings$equation[Settings$derived %in% s$name]
    } else {
      eq = ""
    }
    cat("", paste("`",s$name,"`",sep=""), eq, s$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "### [Exported Quantities](Quantities) (VTK, etc)\n" );
cat( "\n" );
cat( "| Name | [Unit](Units) | Comment |\n" );
cat( "| --- | --- | --- |\n" );
cat( "" );

  for (g in rows(Quantities)) {
    cat("", paste("`",g$name,"`",sep=""), paste("`",g$unit,"`",sep=""), g$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "#### [Exported Global Integrals](Globals) (CSV, etc)\n" );
cat( "\n" );
cat( "| Name | [Unit](Units) | Comment |\n" );
cat( "| --- | --- | --- |\n" );
cat( "" );

  for (g in rows(Globals)) {
    cat("", paste("`",g$name,"`",sep=""), paste("`",g$unit,"`",sep=""), g$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "### [Node Types](Node-Types)\n" );
cat( "\n" );
cat( "| Group | Types |\n" );
cat( "| --- | --- |\n" );
cat( "" );

  ret = by(NodeTypes, NodeTypes$group, function (n) {
    cat("", n$group[1], paste(n$name,collapse=", "), "\n", sep="|");
  })

cat( "\n" );
cat( "### [Solved fields](Fields)\n" );
cat( "\n" );
cat( "| Name | Access pattern | Comment |\n" );
cat( "| --- | --- | --- |\n" );
cat( "" );

  for (d in rows(Fields)) {
    cat("", paste("`",d$name,"`",sep=""),
      stensil(d),
      d$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "### [Densities - default accessors](Densities)\n" );
cat( "\n" );
cat( "| Name | [Field](Fields) | Pulling field from | Comment |\n" );
cat( "| --- | --- | --- | --- |\n" );
cat( "" );

  for (d in rows(DensityAll)) {
    cat("", paste("`",d$name,"`",sep=""), d$field, stensil(d), d$comment, "\n", sep="|");
  }

cat( "\n" );
cat( "### [Action stages](Stages)\n" );
cat( "\n" );
cat( "| Name | Main procedure | Preloaded densities | Pushed fields |\n" );
cat( "| --- | --- | --- | --- |\n" );
cat( "" );

  for (s in rows(Stages)) {
    sel = DensityAll[,s$tag]
    if (any(sel)) {
      dens = paste(DensityAll$name[sel],collapse=", ")
    } else dens = "_none_"
    sel = Fields[,s$tag]
    if (any(sel)) {
      fields = paste(Fields$name[sel],collapse=", ")
    } else fields = "_none_"
    cat("", s$name, s$main, dens, fields, "\n", sep="|");
  }

cat( "\n" );
cat( "\n" );
cat( "### [Actions](Stages)\n" );
cat( "\n" );
cat( "| Name | Stages |\n" );
cat( "| --- | --- |\n" );
cat( "" );

  for (an in names(Actions)) {
    cat("", an, paste(Actions[[an]],collapse=", "), "\n", sep="|");
  }

cat("\n")
