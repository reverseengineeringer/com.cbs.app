.class public final Lcom/flurry/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/util/Map;

    .line 23
    iput p1, p0, Lcom/flurry/sdk/g;->b:I

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/g;->c:Ljava/lang/String;

    .line 26
    if-eqz p3, :cond_0

    .line 27
    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    :cond_0
    iput-wide p4, p0, Lcom/flurry/sdk/g;->d:J

    .line 31
    iput-boolean v1, p0, Lcom/flurry/sdk/g;->e:Z

    .line 33
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->e:Z

    if-eqz v0, :cond_1

    .line 34
    iput-boolean v1, p0, Lcom/flurry/sdk/g;->f:Z

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->f:Z

    .line 54
    iget-wide v0, p0, Lcom/flurry/sdk/g;->d:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/flurry/sdk/g;->g:J

    .line 55
    const/4 v0, 0x3

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ended event \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/sdk/g;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/sdk/g;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->e:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->f:Z

    return v0
.end method

.method public final declared-synchronized c()[B
    .locals 5

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/g;->b:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/bs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/bs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 112
    :try_start_3
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :goto_2
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_4
    iget-wide v0, p0, Lcom/flurry/sdk/g;->d:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/flurry/sdk/g;->g:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 105
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 112
    :try_start_5
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 110
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method
