.class final Lcom/adobe/mobile/f;
.super Lcom/adobe/mobile/a;
.source "SourceFile"


# static fields
.field private static n:Lcom/adobe/mobile/f;

.field private static final o:Ljava/lang/Object;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteStatement;

.field private d:Landroid/database/sqlite/SQLiteStatement;

.field private e:Landroid/database/sqlite/SQLiteStatement;

.field private f:Ljava/lang/String;

.field private g:Landroid/database/sqlite/SQLiteStatement;

.field private h:Ljava/lang/String;

.field private i:Landroid/database/sqlite/SQLiteStatement;

.field private j:Landroid/database/sqlite/SQLiteStatement;

.field private k:Ljava/lang/String;

.field private l:Landroid/database/sqlite/SQLiteStatement;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/mobile/f;->n:Lcom/adobe/mobile/f;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/f;->o:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adobe/mobile/a;-><init>()V

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/adobe/mobile/am;->i()Ljava/io/File;

    move-result-object v1

    const-string v2, "ADBMobileTimedActionsCache.sqlite"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adobe/mobile/f;->a(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method public static e()Lcom/adobe/mobile/f;
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/adobe/mobile/f;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/f;->n:Lcom/adobe/mobile/f;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/adobe/mobile/f;

    invoke-direct {v0}, Lcom/adobe/mobile/f;-><init>()V

    sput-object v0, Lcom/adobe/mobile/f;->n:Lcom/adobe/mobile/f;

    .line 60
    :cond_0
    sget-object v0, Lcom/adobe/mobile/f;->n:Lcom/adobe/mobile/f;

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS TIMEDACTIONS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, STARTTIME INTEGER, ADJSTARTTIME INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS CONTEXTDATA (ID INTEGER PRIMARY KEY AUTOINCREMENT, ACTIONID INTEGER, KEY TEXT, VALUE TEXT, FOREIGN KEY(ACTIONID) REFERENCES TIMEDACTIONS(ID))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "Analytics - Unable to open or create timed actions database (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    const-string v1, "Analytics - Uknown error creating timed actions database (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(J)V
    .locals 7

    .prologue
    .line 170
    iget-object v1, p0, Lcom/adobe/mobile/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/f;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 173
    iget-object v0, p0, Lcom/adobe/mobile/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 174
    iget-object v0, p0, Lcom/adobe/mobile/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v2, "Analytics - Unable to bind prepared statement values for updating the adjusted start time for timed action (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/adobe/mobile/f;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    :try_start_2
    const-string v2, "Analytics - Unable to adjust start times for timed actions (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    const-string v0, "SELECT ID, STARTTIME, ADJSTARTTIME FROM TIMEDACTIONS WHERE NAME=?"

    iput-object v0, p0, Lcom/adobe/mobile/f;->f:Ljava/lang/String;

    .line 288
    const-string v0, "SELECT COUNT(*) FROM TIMEDACTIONS WHERE NAME=?"

    iput-object v0, p0, Lcom/adobe/mobile/f;->h:Ljava/lang/String;

    .line 289
    const-string v0, "SELECT KEY, VALUE FROM CONTEXTDATA WHERE ACTIONID=?"

    iput-object v0, p0, Lcom/adobe/mobile/f;->k:Ljava/lang/String;

    .line 290
    const-string v0, "SELECT COUNT(*) FROM CONTEXTDATA WHERE ACTIONID=? AND KEY=?"

    iput-object v0, p0, Lcom/adobe/mobile/f;->m:Ljava/lang/String;

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO TIMEDACTIONS (NAME, STARTTIME, ADJSTARTTIME) VALUES (@NAME, @START, @START)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->c:Landroid/database/sqlite/SQLiteStatement;

    .line 296
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE TIMEDACTIONS SET ADJSTARTTIME=ADJSTARTTIME+@DELTA WHERE ADJSTARTTIME!=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 297
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE TIMEDACTIONS SET ADJSTARTTIME=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 298
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM TIMEDACTIONS WHERE ID=@ID"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 299
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO CONTEXTDATA(ACTIONID, KEY, VALUE) VALUES (@ACTIONID, @KEY, @VALUE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->i:Landroid/database/sqlite/SQLiteStatement;

    .line 300
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE CONTEXTDATA SET VALUE=@VALUE WHERE ACTIONID=@ACTIONID AND KEY=@KEY"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->j:Landroid/database/sqlite/SQLiteStatement;

    .line 301
    iget-object v0, p0, Lcom/adobe/mobile/f;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM CONTEXTDATA WHERE ACTIONID=@ACTIONID"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/f;->l:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "Analytics - unable to prepare the needed SQL statements for interacting with the timed actions database (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    .line 307
    const-string v1, "Analytics - Unknown error preparing sql statements (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 255
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/mobile/am;->i()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADBMobileDataCache.sqliteADBMobileTimedActionsCache.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/adobe/mobile/am;->i()Ljava/io/File;

    move-result-object v2

    const-string v3, "ADBMobileTimedActionsCache.sqlite"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    const-string v0, "Analytics - Unable to migrate old Timed Actions db, creating new Timed Actions db (move file returned false)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "Analytics - Unable to migrate old Timed Actions db, creating new Timed Actions db (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/adobe/mobile/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/f;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 192
    iget-object v0, p0, Lcom/adobe/mobile/f;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v2, "Analytics - Unable to update adjusted time for timed actions after crash (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/adobe/mobile/f;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    :try_start_2
    const-string v2, "Analytics - Unknown error clearing adjusted start times for timed actions (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/adobe/mobile/f;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
