.class public abstract Lcom/flurry/sdk/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/at$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/s;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/String;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/flurry/sdk/av;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/at;->d:Ljava/util/Set;

    .line 35
    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/at;->f:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/flurry/sdk/at$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/at$1;-><init>(Lcom/flurry/sdk/at;)V

    iput-object v0, p0, Lcom/flurry/sdk/at;->a:Lcom/flurry/sdk/ah;

    .line 53
    iput-object p2, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/at;->a:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    .line 1064
    new-instance v0, Lcom/flurry/sdk/at$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/at$2;-><init>(Lcom/flurry/sdk/at;Ljava/lang/String;)V

    .line 2060
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 140
    .line 4107
    iget-object v0, p0, Lcom/flurry/sdk/at;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 140
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 141
    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/at$a;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/flurry/sdk/at$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/at$4;-><init>(Lcom/flurry/sdk/at;Lcom/flurry/sdk/at$a;)V

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Lcom/flurry/sdk/at$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/at$7;-><init>(Lcom/flurry/sdk/at;Ljava/lang/String;Ljava/lang/String;)V

    .line 7060
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at$a;)V

    .line 122
    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 2112
    :cond_1
    new-instance v0, Lcom/flurry/sdk/at$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/at$3;-><init>(Lcom/flurry/sdk/at;[BLjava/lang/String;Ljava/lang/String;)V

    .line 3060
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at$a;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x4

    .line 209
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    .line 6079
    iget-boolean v0, v0, Lcom/flurry/sdk/fj;->b:Z

    .line 209
    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    .line 6228
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/flurry/sdk/av;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/flurry/sdk/at;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/av;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 228
    iget-object v1, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of not sent blocks = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 232
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/flurry/sdk/at;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 239
    invoke-direct {p0}, Lcom/flurry/sdk/at;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    new-instance v2, Lcom/flurry/sdk/af;

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, ".yflurrydatasenderblock."

    new-instance v8, Lcom/flurry/sdk/at$6;

    invoke-direct {v8, p0}, Lcom/flurry/sdk/at$6;-><init>(Lcom/flurry/sdk/at;)V

    invoke-direct {v2, v6, v7, v8}, Lcom/flurry/sdk/af;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/flurry/sdk/bd;)V

    .line 250
    invoke-virtual {v2}, Lcom/flurry/sdk/af;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/au;

    .line 251
    if-nez v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    const-string v6, "Internal ERROR! Cannot read!"

    invoke-static {v11, v2, v6}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/av;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    :cond_4
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()[B

    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    array-length v6, v2

    if-nez v6, :cond_7

    .line 259
    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    const-string v6, "Internal ERROR! Report is empty!"

    invoke-static {v11, v2, v6}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/av;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 264
    :cond_7
    iget-object v6, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reading block info "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v6, v7}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/flurry/sdk/at;->d:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v2, v1, v0}, Lcom/flurry/sdk/at;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 187
    .line 4182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/at;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/flurry/sdk/au;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/au;-><init>([B)V

    .line 5102
    iget-object v2, v1, Lcom/flurry/sdk/au;->a:Ljava/lang/String;

    .line 192
    new-instance v3, Lcom/flurry/sdk/af;

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ".yflurrydatasenderblock."

    new-instance v6, Lcom/flurry/sdk/at$5;

    invoke-direct {v6, p0}, Lcom/flurry/sdk/at$5;-><init>(Lcom/flurry/sdk/at;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/sdk/af;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/flurry/sdk/bd;)V

    .line 199
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/af;->a(Ljava/lang/Object;)V

    .line 200
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Saving Block File "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)V

    .line 203
    return-void
.end method
