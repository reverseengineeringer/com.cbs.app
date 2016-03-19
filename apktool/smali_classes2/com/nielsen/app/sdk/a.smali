.class final Lcom/nielsen/app/sdk/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/a$a;,
        Lcom/nielsen/app/sdk/a$b;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field private static j:Lcom/nielsen/app/sdk/a;


# instance fields
.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:[Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SESSION_KILL"

    aput-object v1, v0, v3

    const-string v1, "SESSION_START"

    aput-object v1, v0, v4

    const-string v1, "SESSION_STOP"

    aput-object v1, v0, v5

    const-string v1, "ID3"

    aput-object v1, v0, v6

    const-string v1, "PLAYHEAD"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "METADATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nielsen/app/sdk/a;->a:[Ljava/lang/String;

    .line 79
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SESSION"

    aput-object v1, v0, v3

    const-string v1, "UPLOAD"

    aput-object v1, v0, v4

    const-string v1, "LOG"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    .line 107
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TIMESTAMP"

    aput-object v1, v0, v3

    const-string v1, "TIMESTAMP3"

    aput-object v1, v0, v4

    const-string v1, "TIMESTAMP2"

    aput-object v1, v0, v5

    const-string v1, "PROCESSOR"

    aput-object v1, v0, v6

    const-string v1, "MESSAGE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nielsen/app/sdk/a;->c:[Ljava/lang/String;

    .line 1572
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/a;->j:Lcom/nielsen/app/sdk/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    const-string v0, "NielsenAppApi"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 144
    iput-boolean v2, p0, Lcom/nielsen/app/sdk/a;->g:Z

    .line 234
    iput-wide v6, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 246
    iput-wide v6, p0, Lcom/nielsen/app/sdk/a;->i:J

    .line 1206
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    .line 1207
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/nielsen/app/sdk/a;->e:[Ljava/lang/String;

    .line 1208
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/nielsen/app/sdk/a;->f:[Ljava/lang/String;

    .line 205
    const/16 v0, 0x49

    const-string v1, "Creating data base name(NielsenAppApi) and version(2)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/nielsen/app/sdk/a;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(IJIIJLjava/lang/String;)J
    .locals 14

    .prologue
    .line 978
    monitor-enter p0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 979
    const/16 v2, 0x57

    :try_start_0
    const-string v3, "updateLog() should be used for %s Table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 982
    :cond_0
    const/4 v3, 0x0

    .line 984
    :try_start_1
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 985
    if-nez v4, :cond_3

    .line 986
    :try_start_2
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Update execution failed on table ( "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    :catch_0
    move-exception v2

    move-object v10, v4

    move-wide/from16 v8, p2

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0xd

    const/16 v5, 0x45

    :try_start_3
    const-string v6, "Failed to update records on table %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v12, v12, p1

    aput-object v12, v7, v11

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1032
    if-eqz v10, :cond_1

    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    move-wide v2, v8

    .line 1036
    :cond_2
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 989
    :cond_3
    :try_start_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 991
    const-string v3, "MESSAGE"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string v3, "TIMESTAMP"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 993
    const-string v3, "PROCESSOR"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    const-string v3, "DATA"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    .line 997
    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    .line 998
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-gez v3, :cond_5

    .line 999
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Insert execution on table ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1032
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1033
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1032
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 978
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1002
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 1012
    :try_start_7
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unknow table ( "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    :pswitch_0
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 1015
    :goto_3
    :pswitch_1
    const/16 v2, 0x49

    const-string v3, "Inserted record successfully into the table(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v7, v7, p1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v2, p2

    .line 1032
    :goto_4
    if-eqz v4, :cond_2

    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1033
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1007
    :pswitch_2
    :try_start_9
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    goto :goto_3

    .line 1019
    :cond_6
    const-string v3, "ID = ?"

    .line 1020
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-1"

    aput-object v7, v5, v6

    .line 1022
    sget-object v6, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1023
    if-gez v5, :cond_7

    .line 1024
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update execution on table ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_7
    const/16 v2, 0x49

    const-string v5, "Updated record successfully into the table(%s) whereClause(%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v8, v8, p1

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-wide/from16 v2, p2

    goto :goto_4

    .line 1032
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    move-object v4, v10

    goto/16 :goto_2

    .line 1030
    :catch_1
    move-exception v2

    move-object v10, v3

    move-wide/from16 v8, p2

    goto/16 :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nielsen/app/sdk/a;
    .locals 2

    .prologue
    .line 1566
    const-class v1, Lcom/nielsen/app/sdk/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/a;->j:Lcom/nielsen/app/sdk/a;

    if-nez v0, :cond_0

    .line 1567
    new-instance v0, Lcom/nielsen/app/sdk/a;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/a;->j:Lcom/nielsen/app/sdk/a;

    .line 1570
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/a;->j:Lcom/nielsen/app/sdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1566
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(IZ)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/a$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 788
    const/4 v2, 0x0

    .line 790
    const/4 v1, 0x0

    .line 792
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    :try_start_1
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v12

    .line 796
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 797
    :try_start_2
    const-string v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    :goto_0
    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/nielsen/app/sdk/a;->c:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    const-string v2, " ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    if-nez v12, :cond_7

    .line 818
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Query execution failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v7, v12

    :goto_1
    const/4 v1, 0x1

    const/16 v2, 0xd

    const/16 v3, 0x45

    :try_start_3
    const-string v4, "Failed to get records on table %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v9, v9, p1

    aput-object v9, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 882
    if-eqz v6, :cond_0

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_2
    move-object v0, v10

    .line 890
    :goto_3
    monitor-exit p0

    return-object v0

    .line 798
    :cond_2
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 799
    :try_start_5
    const-string v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " WHERE ID >= -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 882
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 884
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 882
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 787
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 800
    :cond_5
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 801
    :try_start_7
    const-string v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " WHERE ID <= -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 803
    :cond_6
    const-string v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " WHERE ID >= -1 AND ID <=-1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 821
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 822
    if-nez v11, :cond_8

    .line 823
    :try_start_8
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Query execution failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :catch_1
    move-exception v0

    move-object v6, v11

    move-object v7, v12

    goto/16 :goto_1

    .line 826
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v0

    .line 827
    if-gtz v0, :cond_b

    .line 882
    if-eqz v11, :cond_9

    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 884
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 887
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    move-object v0, v10

    .line 828
    goto/16 :goto_3

    .line 831
    :cond_b
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_d

    .line 835
    const/4 v5, 0x6

    .line 836
    const/4 v4, -0x1

    .line 837
    const-wide/16 v6, 0x0

    .line 838
    const-string v9, ""

    .line 839
    const/4 v1, 0x0

    .line 841
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v8, :cond_c

    aget-object v0, v3, v2

    .line 843
    invoke-static {v0}, Lcom/nielsen/app/sdk/a;->a(Ljava/lang/String;)I

    move-result v13

    .line 844
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 846
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 841
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 849
    :pswitch_1
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move v0, v1

    .line 850
    goto :goto_7

    .line 852
    :pswitch_2
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v1

    .line 853
    goto :goto_7

    .line 855
    :pswitch_3
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v1

    .line 856
    goto :goto_7

    .line 858
    :pswitch_4
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v0, v1

    .line 859
    goto :goto_7

    .line 861
    :pswitch_5
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_7

    .line 868
    :cond_c
    new-instance v0, Lcom/nielsen/app/sdk/a$b;

    int-to-long v2, v1

    const/16 v8, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/nielsen/app/sdk/a$b;-><init>(Lcom/nielsen/app/sdk/a;JIIJCLjava/lang/String;)V

    .line 869
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    .line 882
    :catchall_2
    move-exception v0

    move-object v1, v11

    goto/16 :goto_4

    :cond_d
    if-eqz v11, :cond_e

    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 884
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_e
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 882
    :catchall_3
    move-exception v0

    move-object v12, v2

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v6

    move-object v12, v7

    goto/16 :goto_4

    .line 878
    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    goto/16 :goto_1

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/a;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/a;->g:Z

    return v0
.end method

.method private declared-synchronized c(I)J
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 917
    monitor-enter p0

    .line 923
    :try_start_0
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v3

    .line 924
    if-nez v3, :cond_2

    .line 925
    :try_start_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Query execution failed : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 943
    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    move-object v8, v3

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xd

    const/16 v3, 0x45

    :try_start_2
    const-string v4, "Failed to count records on table %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v10, v10, p1

    aput-object v10, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 944
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Query execution failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v3, v8

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 948
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 950
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 946
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 917
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 928
    :cond_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "SELECT count(*) FROM "

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 929
    :try_start_5
    sget-object v0, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 932
    if-nez v1, :cond_3

    .line 933
    :try_start_6
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Query execution failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :catch_1
    move-exception v0

    move-object v6, v2

    move-object v7, v1

    move-object v8, v3

    goto :goto_0

    .line 936
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 937
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 938
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v0

    int-to-long v4, v0

    .line 946
    if-eqz v1, :cond_4

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 948
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 950
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 954
    :cond_5
    monitor-exit p0

    return-wide v4

    .line 940
    :cond_6
    :try_start_8
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Query execution failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 946
    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto/16 :goto_1

    .line 943
    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v6, v2

    move-object v7, v1

    move-object v8, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(IIIJLjava/lang/String;)J
    .locals 10

    .prologue
    .line 1060
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/nielsen/app/sdk/a;->a(IJIIJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IJ)J
    .locals 8

    .prologue
    .line 1237
    const-wide/16 v4, -0x1

    const/4 v6, 0x6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized a(IJJI)J
    .locals 14

    .prologue
    .line 1092
    monitor-enter p0

    const-wide/16 v8, -0x1

    .line 1094
    const/4 v3, 0x0

    .line 1098
    :try_start_0
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 1099
    if-nez v5, :cond_1

    .line 1100
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete execution failed on table ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1173
    :catch_0
    move-exception v2

    move-object v10, v5

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0xd

    const/16 v5, 0x45

    :try_start_2
    const-string v6, "Failed to delete records on table %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v12, v12, p1

    aput-object v12, v7, v11

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1177
    if-eqz v10, :cond_0

    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1178
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1201
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknow table ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1092
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1103
    :cond_1
    :try_start_4
    const-string v3, ""

    .line 1104
    const/4 v2, 0x0

    .line 1106
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-ltz v4, :cond_2

    .line 1108
    const-string v3, "ID <= ?"

    .line 1110
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 1111
    const/4 v2, 0x1

    .line 1113
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p4, v6

    if-ltz v4, :cond_4

    .line 1115
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TIMESTAMP < ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1121
    iget-object v4, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 1122
    add-int/lit8 v2, v2, 0x1

    .line 1124
    :cond_4
    const/4 v4, 0x6

    move/from16 v0, p6

    if-eq v0, v4, :cond_e

    .line 1126
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MESSAGE <> ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1132
    iget-object v4, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 1133
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    move-object v2, v3

    move v3, v13

    .line 1135
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1136
    const-string v2, "1"

    move-object v4, v2

    .line 1139
    :goto_2
    const/4 v2, 0x0

    .line 1140
    packed-switch v3, :pswitch_data_1

    .line 1163
    :goto_3
    :pswitch_0
    sget-object v3, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_6

    .line 1164
    :try_start_5
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Delete execution on table ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1173
    :catch_1
    move-exception v4

    move-object v10, v5

    move-wide v8, v2

    move-object v2, v4

    goto/16 :goto_0

    .line 1147
    :pswitch_1
    :try_start_6
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 1148
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->f:[Ljava/lang/String;

    goto :goto_3

    .line 1153
    :pswitch_2
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 1154
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->e:[Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/nielsen/app/sdk/a;->e:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 1155
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->e:[Ljava/lang/String;

    goto :goto_3

    .line 1160
    :pswitch_3
    iget-object v2, p0, Lcom/nielsen/app/sdk/a;->d:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 1167
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_7

    .line 1168
    const/16 v6, 0x49

    :try_start_7
    const-string v7, "Deleted %d record(s) successfully from table(%s) whereClause(%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v10, v10, p1

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1177
    :cond_7
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1178
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1181
    :cond_8
    packed-switch p1, :pswitch_data_2

    .line 1201
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknow table ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1184
    :pswitch_4
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 1185
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 1186
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    :goto_4
    :pswitch_5
    move-wide v2, v8

    .line 1204
    :cond_a
    :goto_5
    :pswitch_6
    monitor-exit p0

    return-wide v2

    .line 1184
    :pswitch_7
    :try_start_9
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 1185
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    .line 1186
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 1177
    :cond_b
    :goto_6
    :pswitch_8
    throw v2

    :catchall_1
    move-exception v2

    move-object v5, v3

    :goto_7
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1178
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1181
    :cond_c
    packed-switch p1, :pswitch_data_3

    .line 1201
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknow table ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/nielsen/app/sdk/a;->b:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1191
    :pswitch_9
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    .line 1192
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    .line 1193
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    goto :goto_6

    .line 1191
    :pswitch_a
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    .line 1192
    iget-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 1193
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J

    goto :goto_4

    .line 1184
    :pswitch_b
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 1185
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 1186
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->h:J

    goto :goto_5

    .line 1191
    :pswitch_c
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    .line 1192
    iget-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 1193
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nielsen/app/sdk/a;->i:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 1177
    :catchall_2
    move-exception v2

    goto :goto_7

    :catchall_3
    move-exception v4

    move-wide v8, v2

    move-object v2, v4

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v5, v10

    goto :goto_7

    .line 1173
    :catch_2
    move-exception v2

    move-object v10, v3

    goto/16 :goto_0

    :cond_d
    move-object v4, v2

    goto/16 :goto_2

    :cond_e
    move v13, v2

    move-object v2, v3

    move v3, v13

    goto/16 :goto_1

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_5
    .end packed-switch

    .line 1140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1181
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/a$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nielsen/app/sdk/a;->a(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/nielsen/app/sdk/a$a;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 1492
    monitor-enter p0

    .line 1494
    :try_start_0
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1495
    if-nez v1, :cond_1

    .line 1496
    :try_start_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Reset execution failed on table (LOG)"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    :catch_0
    move-exception v0

    move-object v6, v1

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xd

    const/16 v3, 0x45

    :try_start_2
    const-string v4, "Failed to reset all records on LOG table"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1533
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1536
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1499
    :cond_1
    :try_start_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1501
    const-string v2, "LOG"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1502
    const-string v2, "INFO"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v2, "COUNT"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1504
    const-string v2, "TIMESTAMP"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1505
    const-string v2, "TIMESTAMP2"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1506
    const-string v2, "TIMESTAMP3"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1507
    const-string v2, "TIMESTAMP3"

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1509
    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->f()J

    move-result-wide v2

    .line 1510
    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 1511
    const-string v2, "LOG"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1512
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 1513
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Insert execution on table (LOG) failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1533
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1534
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1533
    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1492
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1516
    :cond_3
    :try_start_6
    invoke-virtual {p1, v2, v3}, Lcom/nielsen/app/sdk/a$a;->a(J)V

    .line 1518
    const/16 v0, 0x49

    const-string v2, "Inserted record successfully into the table(LOG)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1533
    :goto_3
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 1520
    :cond_4
    :try_start_8
    const-string v2, "ID = ?"

    .line 1521
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$a;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1523
    const-string v4, "LOG"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1524
    if-gez v3, :cond_5

    .line 1525
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update execution on table (LOG) failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1528
    :cond_5
    const/16 v0, 0x49

    const-string v3, "Updated record successfully into the table(LOG) whereClause(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1533
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2

    .line 1531
    :catch_1
    move-exception v0

    move-object v6, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/a$a;

    .line 1548
    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/a;->a(Lcom/nielsen/app/sdk/a$a;)V

    goto :goto_0

    .line 1550
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/a;->g:Z

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nielsen/app/sdk/a$1;

    invoke-direct {v1, p0}, Lcom/nielsen/app/sdk/a$1;-><init>(Lcom/nielsen/app/sdk/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/a;->g:Z

    return v0
.end method

.method public final declared-synchronized b(I)Lcom/nielsen/app/sdk/a$a;
    .locals 27

    .prologue
    .line 1406
    monitor-enter p0

    if-lez p1, :cond_0

    const/16 v2, 0x17

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    .line 1407
    :cond_0
    const/4 v3, 0x0

    .line 1481
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1410
    :cond_2
    const/16 v17, 0x0

    .line 1411
    const/4 v4, 0x0

    .line 1413
    const/4 v3, 0x0

    .line 1415
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 1416
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "SELECT * FROM LOG WHERE LOG == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1417
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1419
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v16

    .line 1421
    const-wide/16 v5, 0x17

    .line 1423
    const-wide/16 v8, 0x0

    .line 1424
    const-wide/16 v10, 0x0

    .line 1425
    const-wide/16 v12, 0x0

    .line 1427
    :try_start_2
    const-string v14, ""

    .line 1429
    const/4 v7, 0x0

    .line 1431
    const-wide/16 v2, 0x0

    .line 1433
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide/from16 v18, v2

    .line 1434
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1435
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v2, 0x0

    move/from16 v22, v2

    move-wide/from16 v2, v18

    move-wide/from16 v23, v12

    move v12, v7

    move-object v13, v14

    move/from16 v14, v22

    move-wide/from16 v25, v5

    move-wide/from16 v4, v23

    move-wide v6, v10

    move-wide/from16 v10, v25

    :goto_2
    move/from16 v0, v21

    if-ge v14, v0, :cond_3

    aget-object v18, v20, v14

    .line 1436
    invoke-static/range {v18 .. v18}, Lcom/nielsen/app/sdk/a;->a(Ljava/lang/String;)I

    move-result v19

    .line 1437
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1439
    packed-switch v19, :pswitch_data_0

    .line 1435
    :goto_3
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1441
    :pswitch_1
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_3

    .line 1444
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_3

    .line 1447
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_3

    .line 1450
    :pswitch_4
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_3

    .line 1453
    :pswitch_5
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_3

    .line 1456
    :pswitch_6
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 1459
    :pswitch_7
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_3

    .line 1466
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-wide/from16 v18, v2

    move-object v14, v13

    move-wide/from16 v22, v6

    move v7, v12

    move-wide v12, v4

    move-wide v5, v10

    move-wide/from16 v10, v22

    goto/16 :goto_1

    .line 1468
    :cond_4
    new-instance v3, Lcom/nielsen/app/sdk/a$a;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v14}, Lcom/nielsen/app/sdk/a$a;-><init>(Lcom/nielsen/app/sdk/a;JIJJJLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1469
    :try_start_3
    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/nielsen/app/sdk/a$a;->a(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1473
    if-eqz v16, :cond_5

    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1475
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_5
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1478
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1406
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1471
    :catch_0
    move-exception v2

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v8, v17

    :goto_4
    const/4 v3, 0x1

    const/16 v4, 0xd

    const/16 v5, 0x45

    :try_start_5
    const-string v6, "Failed to get all records on LOG table"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1473
    if-eqz v10, :cond_6

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1475
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1478
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    move-object v3, v8

    .line 1480
    goto/16 :goto_0

    .line 1473
    :catchall_1
    move-exception v2

    move-object v15, v3

    move-object/from16 v16, v4

    :goto_5
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1475
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1478
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1473
    :cond_9
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    move-object/from16 v16, v4

    goto :goto_5

    :catchall_3
    move-exception v2

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v15, v9

    move-object/from16 v16, v10

    goto :goto_5

    .line 1471
    :catch_1
    move-exception v2

    move-object v9, v15

    move-object v10, v4

    move-object/from16 v8, v17

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v8, v17

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v8, v3

    goto :goto_4

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/nielsen/app/sdk/a;->c(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->h:J

    .line 216
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/nielsen/app/sdk/a;->c(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/a;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v0

    const/16 v0, 0x57

    const-string v2, "setTableCounters() failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a;->h:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a;->i:J

    return-wide v0
.end method

.method public final e()J
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    .line 1255
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v0

    .line 1259
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v4

    .line 1261
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/nielsen/app/sdk/b;->a(J[C)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1267
    :goto_0
    const-wide/32 v4, 0xd2f00

    sub-long v4, v0, v4

    .line 1269
    const/4 v1, 0x1

    const/4 v6, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IJJI)J

    move-result-wide v0

    return-wide v0

    .line 1264
    :catch_0
    move-exception v4

    const/16 v5, 0x49

    const-string v6, "Could not translate device time into server time, using device time."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v8, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final declared-synchronized f()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    monitor-enter p0

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1299
    const/4 v4, 0x0

    .line 1300
    const/4 v3, 0x0

    .line 1304
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v19

    .line 1305
    if-nez v19, :cond_2

    .line 1306
    :try_start_2
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Update execution failed on table (LOG)"

    invoke-direct {v2, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1380
    :catch_0
    move-exception v2

    move-object v8, v3

    move-object/from16 v9, v19

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0xd

    const/16 v5, 0x45

    :try_start_3
    const-string v6, "Failed to get all records on LOG table"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1384
    if-eqz v8, :cond_0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1388
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    move-object v2, v15

    .line 1392
    :goto_2
    monitor-exit p0

    return-object v2

    .line 1309
    :cond_2
    :try_start_5
    const-string v2, "SELECT * FROM LOG order by TIMESTAMP "

    .line 1311
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v18

    .line 1312
    if-nez v18, :cond_3

    .line 1313
    :try_start_6
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Query execution failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1380
    :catch_1
    move-exception v2

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    goto :goto_0

    .line 1316
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    .line 1317
    if-gtz v2, :cond_6

    .line 1384
    if-eqz v18, :cond_4

    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1386
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1388
    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1389
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    move-object v2, v15

    .line 1318
    goto :goto_2

    .line 1321
    :cond_6
    :try_start_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1322
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1324
    const-wide/16 v5, 0x17

    .line 1326
    const-wide/16 v8, 0x0

    .line 1327
    const-wide/16 v10, 0x0

    .line 1328
    const-wide/16 v12, 0x0

    .line 1330
    const-string v14, ""

    .line 1332
    const/4 v7, 0x0

    .line 1334
    const-wide/16 v16, 0x0

    .line 1336
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_4
    move/from16 v0, v21

    if-ge v4, v0, :cond_7

    aget-object v2, v20, v4

    .line 1338
    invoke-static {v2}, Lcom/nielsen/app/sdk/a;->a(Ljava/lang/String;)I

    move-result v3

    .line 1339
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1341
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-wide/from16 v2, v16

    .line 1336
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v2

    goto :goto_4

    .line 1344
    :pswitch_1
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-wide/from16 v2, v16

    .line 1345
    goto :goto_5

    .line 1347
    :pswitch_2
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-wide/from16 v2, v16

    .line 1348
    goto :goto_5

    .line 1350
    :pswitch_3
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide/from16 v2, v16

    .line 1351
    goto :goto_5

    .line 1353
    :pswitch_4
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-wide/from16 v2, v16

    .line 1354
    goto :goto_5

    .line 1356
    :pswitch_5
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide/from16 v2, v16

    .line 1357
    goto :goto_5

    .line 1359
    :pswitch_6
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v2, v16

    .line 1360
    goto :goto_5

    .line 1362
    :pswitch_7
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_5

    .line 1369
    :cond_7
    new-instance v3, Lcom/nielsen/app/sdk/a$a;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v14}, Lcom/nielsen/app/sdk/a$a;-><init>(Lcom/nielsen/app/sdk/a;JIJJJLjava/lang/String;)V

    .line 1370
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/nielsen/app/sdk/a$a;->a(J)V

    .line 1371
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 1384
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v18, :cond_8

    :try_start_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1386
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1388
    :cond_8
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1389
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1384
    :cond_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1298
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1384
    :cond_a
    if-eqz v18, :cond_b

    :try_start_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1386
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1388
    :cond_b
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1384
    :catchall_2
    move-exception v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object/from16 v18, v3

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    goto :goto_6

    .line 1380
    :catch_2
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    goto/16 :goto_0

    .line 1341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 259
    const-string v0, "CREATE TABLE IF NOT EXISTS SESSION (ID INTEGER PRIMARY KEY AUTOINCREMENT, DATA TEXT, MESSAGE INT,TIMESTAMP BIGINT ,PROCESSOR INT)"

    .line 261
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v0, "CREATE TABLE IF NOT EXISTS UPLOAD (ID INTEGER PRIMARY KEY AUTOINCREMENT, DATA TEXT, MESSAGE INT,TIMESTAMP BIGINT ,PROCESSOR INT)"

    .line 266
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "CREATE TABLE IF NOT EXISTS LOG  (ID INTEGER PRIMARY KEY AUTOINCREMENT, INFO TEXT, LOG BIGINT, TIMESTAMP BIGINT, TIMESTAMP2 BIGINT, TIMESTAMP3 BIGINT, COUNT INT)"

    .line 270
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const/16 v0, 0x49

    const-string v1, "Created data base tables (SESSION), (UPLOAD) and (LOG)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 298
    const-string v0, "DROP TABLE IF EXISTS SESSION"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string v0, "DROP TABLE IF EXISTS UPLOAD"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "DROP TABLE IF EXISTS LOG"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/nielsen/app/sdk/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    return-void
.end method
