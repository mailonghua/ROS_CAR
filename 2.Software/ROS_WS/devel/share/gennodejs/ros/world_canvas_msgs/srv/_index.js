
"use strict";

let ResetDatabase = require('./ResetDatabase.js')
let ListMaps = require('./ListMaps.js')
let GetAnnotations = require('./GetAnnotations.js')
let SaveMap = require('./SaveMap.js')
let YAMLExport = require('./YAMLExport.js')
let RenameMap = require('./RenameMap.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let YAMLImport = require('./YAMLImport.js')
let DeleteMap = require('./DeleteMap.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let ListWorlds = require('./ListWorlds.js')
let SetKeyword = require('./SetKeyword.js')
let PublishMap = require('./PublishMap.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let SetRelationship = require('./SetRelationship.js')
let GetAnnotationsData = require('./GetAnnotationsData.js')

module.exports = {
  ResetDatabase: ResetDatabase,
  ListMaps: ListMaps,
  GetAnnotations: GetAnnotations,
  SaveMap: SaveMap,
  YAMLExport: YAMLExport,
  RenameMap: RenameMap,
  PubAnnotationsData: PubAnnotationsData,
  YAMLImport: YAMLImport,
  DeleteMap: DeleteMap,
  DeleteAnnotations: DeleteAnnotations,
  ListWorlds: ListWorlds,
  SetKeyword: SetKeyword,
  PublishMap: PublishMap,
  EditAnnotationsData: EditAnnotationsData,
  SaveAnnotationsData: SaveAnnotationsData,
  SetRelationship: SetRelationship,
  GetAnnotationsData: GetAnnotationsData,
};
