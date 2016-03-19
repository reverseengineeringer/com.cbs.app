.class final Lcom/urbanairship/m;
.super Lcom/urbanairship/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const-string v0, "ua_preferences.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/urbanairship/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/m;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 37
    const/4 v0, 0x2

    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/m;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "DROP TABLE IF EXISTS preferences"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    const-string v0, "CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method
