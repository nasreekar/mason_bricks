class {{table_name.pascalCase()}} extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  IntColumn get category => integer().nullable()();
}

name: drift_crud
description: A simple drift database CRUD operations brick
version: 0.0.1

vars:
  table_name:
    default: todo
    type: string
    description: The table name
    prompt: What is the table name?
