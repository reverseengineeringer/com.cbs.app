.class public Lcom/cbs/app/db/MyShowDataSource;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "show_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "date_added"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->c:[Ljava/lang/String;

    .line 23
    iput-boolean v3, p0, Lcom/cbs/app/db/MyShowDataSource;->d:Z

    .line 26
    new-instance v0, Lcom/cbs/app/db/CBSSqlHelper;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/CBSSqlHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    invoke-virtual {v0}, Lcom/cbs/app/db/CBSSqlHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/db/MyShowDataSource;->d:Z

    .line 32
    return-void
.end method

.method public final a(J)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_show"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "show_id"

    aput-object v3, v2, v9

    const-string v3, "show_id  = ?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move v0, v8

    .line 89
    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->b:Lcom/cbs/app/db/CBSSqlHelper;

    invoke-virtual {v0}, Lcom/cbs/app/db/CBSSqlHelper;->close()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/db/MyShowDataSource;->d:Z

    .line 37
    return-void
.end method

.method public getAllShows()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/db/MyShow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/cbs/app/db/MyShowDataSource;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_show"

    iget-object v2, p0, Lcom/cbs/app/db/MyShowDataSource;->c:[Ljava/lang/String;

    const-string v7, "show_id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    new-instance v1, Lcom/cbs/app/view/model/db/MyShow;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/view/model/db/MyShow;-><init>(Ljava/lang/Integer;Ljava/util/Date;)V

    .line 72
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    return-object v8
.end method
