.class public abstract Lcom/urbanairship/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.urbanairship.databases"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 76
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-journal"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 86
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_2
    new-instance v0, Lcom/urbanairship/d/b$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/urbanairship/d/b$1;-><init>(Lcom/urbanairship/d/b;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/urbanairship/d/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 108
    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/d/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_1
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 149
    const-string v1, "DataManager - Error opening writable database. Retrying..."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0x80

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    const-string v0, "INSERT INTO "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    const-string v0, "VALUES ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 218
    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, ") "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ");"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const-string v1, ", "

    goto :goto_1

    .line 225
    :cond_1
    const-string v1, ", "

    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 268
    if-nez p2, :cond_0

    .line 269
    invoke-static {p0, p1, p3}, Lcom/urbanairship/d/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/urbanairship/d/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    if-nez p2, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 480
    move v2, v0

    :goto_0
    const/4 v1, 0x3

    if-ge v2, v1, :cond_0

    .line 482
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/d/b;->a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V

    .line 484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v0, 0x1

    .line 491
    :cond_0
    return v0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    const-string v3, "Unable to insert into database"

    invoke-static {v3, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/d/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_1
    return-object v0

    .line 170
    :catch_0
    move-exception v1

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 171
    const-string v1, "DataManager - Error opening readable database. Retrying..."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 410
    invoke-direct {p0}, Lcom/urbanairship/d/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 411
    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v3

    .line 419
    const-string v4, "Update Failed"

    invoke-static {v4, v3}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 317
    if-nez p2, :cond_0

    .line 318
    const-string p2, "1"

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/d/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 322
    if-nez v2, :cond_2

    .line 334
    :cond_1
    :goto_0
    return v0

    .line 326
    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 328
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v3

    .line 330
    const-string v4, "Unable to delete item from a database"

    invoke-static {v4, v3}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 383
    invoke-direct {p0}, Lcom/urbanairship/d/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 384
    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-wide v0

    .line 388
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v2, 0x3

    if-ge v3, v2, :cond_0

    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/d/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    const-string v4, "Unable to insert into database"

    invoke-static {v4, v2}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/urbanairship/d/b;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 442
    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 455
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    const/4 v1, 0x3

    if-ge v9, v1, :cond_1

    .line 448
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    const-string v2, "Query Failed"

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
.end method

.method public final a(Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/urbanairship/d/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-object v0

    .line 351
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 352
    invoke-virtual {p0, p1, v2}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 355
    :try_start_0
    array-length v4, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, p2, v1

    .line 356
    invoke-direct {p0, v3, v5}, Lcom/urbanairship/d/b;->b(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 357
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 362
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    :try_start_1
    const-string v3, "Unable to insert into database"

    invoke-static {v3, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/d/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "Failed to close the database."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Unable to downgrade database"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
