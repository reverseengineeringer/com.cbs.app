.class final Lcom/urbanairship/o;
.super Lcom/urbanairship/d/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    const-string v0, "ua_richpush.db"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "message_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "message_url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_body_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "message_read_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unread_orig"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "raw_message_object"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "expiration_timestamp"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/urbanairship/o;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "CREATE TABLE IF NOT EXISTS richpush (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id TEXT UNIQUE, message_url TEXT, message_body_url TEXT, message_read_url TEXT, title TEXT, extra TEXT, unread INTEGER, unread_orig INTEGER, deleted INTEGER, timestamp TEXT, raw_message_object TEXT,expiration_timestamp TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 73
    packed-switch p2, :pswitch_data_0

    .line 80
    const-string v0, "DROP TABLE IF EXISTS richpush"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string v0, "ALTER TABLE richpush ADD COLUMN raw_message_object TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :pswitch_1
    const-string v0, "ALTER TABLE richpush ADD COLUMN expiration_timestamp TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const-string v0, "message_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 47
    const/4 v0, 0x2

    const-string v1, "message_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 48
    const/4 v0, 0x3

    const-string v1, "message_body_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 49
    const/4 v0, 0x4

    const-string v1, "message_read_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 50
    const/4 v0, 0x5

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 51
    const/4 v0, 0x6

    const-string v1, "extra"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 52
    const/4 v0, 0x7

    const-string v1, "unread"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 53
    const/16 v0, 0x8

    const-string v1, "unread_orig"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 54
    const/16 v0, 0x9

    const-string v1, "deleted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 55
    const/16 v0, 0xa

    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 56
    const/16 v0, 0xb

    const-string v1, "raw_message_object"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 57
    const/16 v0, 0xc

    const-string v1, "expiration_timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/urbanairship/o;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "DROP TABLE IF EXISTS richpush"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    const-string v0, "CREATE TABLE IF NOT EXISTS richpush (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id TEXT UNIQUE, message_url TEXT, message_body_url TEXT, message_read_url TEXT, title TEXT, extra TEXT, unread INTEGER, unread_orig INTEGER, deleted INTEGER, timestamp TEXT, raw_message_object TEXT,expiration_timestamp TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    return-void
.end method
