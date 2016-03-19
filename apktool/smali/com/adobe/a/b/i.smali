.class final Lcom/adobe/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/a/b/i$a;,
        Lcom/adobe/a/b/i$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field private static e:Landroid/database/sqlite/SQLiteDatabase;

.field private static f:Ljava/lang/Integer;


# instance fields
.field protected a:Z

.field protected b:I

.field public d:Ljava/lang/String;

.field private g:Landroid/database/sqlite/SQLiteStatement;

.field private h:Lcom/adobe/a/b/i$b;

.field private i:Z

.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/a/b/i;->f:Ljava/lang/Integer;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/adobe/a/b/i;->a:Z

    .line 18
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/a/b/i;->b:I

    .line 20
    iput-object v2, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    .line 21
    iput-boolean v1, p0, Lcom/adobe/a/b/i;->i:Z

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/i;->j:Ljava/lang/Object;

    .line 25
    iput-object v2, p0, Lcom/adobe/a/b/i;->d:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/adobe/a/b/i;->d:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/adobe/a/b/i;->d()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/adobe/a/b/i;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/adobe/a/b/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADMS SDK Error: Database corrupted("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/a/b/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADMS SDK Debug: Attempting to recover from database failure(delete result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {p0}, Lcom/adobe/a/b/i;->d()V

    .line 113
    return-void
.end method

.method static synthetic b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 119
    sget-object v1, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "HITS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 126
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 129
    new-instance v1, Lcom/adobe/a/b/i$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Count mismatch when deleting hit("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should have been 1."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/adobe/a/b/i$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    new-instance v2, Lcom/adobe/a/b/i$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when deleting hit("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/adobe/a/b/i$a;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/a/b/i;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/a/b/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, TIMESTAMP INTEGER)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO HITS (URL, TIMESTAMP) VALUES (?, ?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/i;->g:Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADMS SDK Error: Unable to create database("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static e()I
    .locals 6

    .prologue
    .line 306
    sget-object v4, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 307
    const-wide/16 v2, 0x0

    .line 310
    :try_start_0
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "HITS"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 315
    :goto_0
    long-to-int v0, v0

    :try_start_1
    monitor-exit v4

    return v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "ADMS SDK Error: Cannot query database count ("

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v2

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/adobe/a/b/i;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    iget-boolean v0, v0, Lcom/adobe/a/b/i$b;->a:Z

    if-nez v0, :cond_0

    .line 68
    monitor-exit v1

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    iget-boolean v0, v0, Lcom/adobe/a/b/i$b;->a:Z

    if-eqz v0, :cond_3

    .line 4159
    :cond_1
    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    if-eqz v0, :cond_2

    .line 4160
    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/a/b/i$b;->a:Z

    .line 4161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    .line 73
    :cond_2
    new-instance v0, Lcom/adobe/a/b/i$b;

    invoke-direct {v0, p0}, Lcom/adobe/a/b/i$b;-><init>(Lcom/adobe/a/b/i;)V

    iput-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    .line 74
    iget-object v0, p0, Lcom/adobe/a/b/i;->h:Lcom/adobe/a/b/i$b;

    invoke-virtual {v0}, Lcom/adobe/a/b/i$b;->start()V

    .line 76
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/a/b/i;->i:Z

    .line 77
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 34
    iget-boolean v0, p0, Lcom/adobe/a/b/i;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/a/b/i;->i:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/adobe/a/b/i;->e()I

    move-result v0

    iget v1, p0, Lcom/adobe/a/b/i;->b:I

    if-lt v0, v1, :cond_4

    .line 1135
    sget-object v10, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v10

    .line 1138
    :try_start_0
    sget-object v0, Lcom/adobe/a/b/i;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "HITS"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "URL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TIMESTAMP"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ID ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/i;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/a/b/i$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1151
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_3
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :cond_4
    sget-object v1, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_4
    iget-object v0, p0, Lcom/adobe/a/b/i;->g:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/adobe/a/b/i;->g:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 49
    iget-object v0, p0, Lcom/adobe/a/b/i;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 56
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/adobe/a/b/i;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 59
    iget-boolean v0, p0, Lcom/adobe/a/b/i;->i:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/adobe/a/b/i;->a()V

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    :try_start_6
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADMS SDK Error: Database corruption error("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/a/b/i$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 1147
    :catch_1
    move-exception v0

    .line 1148
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADMS SDK Error: Unable to delete hit("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1151
    if-eqz v1, :cond_3

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1155
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    .line 1151
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_5

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 51
    :catch_2
    move-exception v0

    .line 52
    :try_start_a
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADMS Error: Unable to insert hit("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), exception("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p0, v0}, Lcom/adobe/a/b/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 57
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 1151
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 1147
    :catch_3
    move-exception v0

    move-object v1, v9

    goto :goto_4
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 180
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADMS SDK Error: Cannot Read Requests From Disk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 195
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/i;->a(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 201
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method
