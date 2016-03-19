.class public Lcom/cbs/app/db/MyRecentVideoDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/cbs/app/db/CBSSqlHelper;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "show_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "med_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_viewed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->c:[Ljava/lang/String;

    .line 28
    iput-boolean v3, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->d:Z

    .line 31
    new-instance v0, Lcom/cbs/app/db/CBSSqlHelper;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/CBSSqlHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    .line 32
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/cbs/app/view/model/db/MyRecentVideo;
    .locals 10

    .prologue
    .line 124
    new-instance v1, Lcom/cbs/app/view/model/db/MyRecentVideo;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v1 .. v6}, Lcom/cbs/app/view/model/db/MyRecentVideo;-><init>(Ljava/lang/Integer;Ljava/lang/String;JLjava/util/Date;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/cbs/app/view/model/db/MyRecentVideo;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 58
    .line 59
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 60
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_recent_video"

    iget-object v2, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->c:[Ljava/lang/String;

    const-string v3, "cid = ?"

    const-string v7, "date_viewed DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cursor size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a(Landroid/database/Cursor;)Lcom/cbs/app/view/model/db/MyRecentVideo;

    move-result-object v5

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getMedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    return-object v5
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    invoke-virtual {v0}, Lcom/cbs/app/db/CBSSqlHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->d:Z

    .line 38
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/db/MyRecentVideo;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addMyRecentVideo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getDateViewed()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    const-string v1, "show_id"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getShowId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v1, "date_viewed"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getDateViewed()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1119
    const-string v1, "med_time"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getMedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    iget-object v1, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "my_recent_video"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 75
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 76
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_recent_video"

    iget-object v2, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->c:[Ljava/lang/String;

    const-string v3, "cid = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cursor size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v2, "med_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "med_time"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "my_recent_video"

    const-string v5, "cid = ?"

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    invoke-virtual {v0}, Lcom/cbs/app/db/CBSSqlHelper;->close()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->d:Z

    .line 45
    return-void
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_recent_video"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllMyRecentVideos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/db/MyRecentVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_recent_video"

    iget-object v2, p0, Lcom/cbs/app/db/MyRecentVideoDataSource;->c:[Ljava/lang/String;

    const-string v7, "date_viewed DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " date22: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a(Landroid/database/Cursor;)Lcom/cbs/app/view/model/db/MyRecentVideo;

    move-result-object v1

    .line 102
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    return-object v8
.end method
