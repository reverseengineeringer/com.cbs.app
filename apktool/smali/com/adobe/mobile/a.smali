.class abstract Lcom/adobe/mobile/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/a$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/mobile/a;->a:Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    .line 80
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x10000010

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/a;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "Analytics - Unable to open database(%s)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    .line 17
    iget-object v1, p0, Lcom/adobe/mobile/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->d()V

    .line 20
    invoke-direct {p0}, Lcom/adobe/mobile/a;->e()V

    .line 22
    iget-object v0, p0, Lcom/adobe/mobile/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->a()V

    .line 25
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->b()V

    .line 27
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 48
    const-string v0, "Analytics - Database in unrecoverable state(%s), resetting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/adobe/mobile/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "Analytics - Database file(%s) was not found."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/adobe/mobile/a;->e()V

    .line 60
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->a()V

    .line 61
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->b()V

    .line 63
    invoke-virtual {p0}, Lcom/adobe/mobile/a;->c()V

    .line 64
    monitor-exit v1

    return-void

    .line 55
    :cond_0
    const-string v0, "Analytics - Database file(%s) was corrupt and had to be deleted."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/mobile/a;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
