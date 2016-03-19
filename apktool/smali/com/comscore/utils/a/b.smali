.class public final Lcom/comscore/utils/a/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/comscore/a/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/comscore/utils/l;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Boolean;

.field private m:Lcom/comscore/utils/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/l;Lcom/comscore/a/b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/comscore/utils/a/b;->i:Z

    iput-boolean v0, p0, Lcom/comscore/utils/a/b;->j:Z

    iput-boolean v0, p0, Lcom/comscore/utils/a/b;->k:Z

    iput-object p1, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    iput-object p3, p0, Lcom/comscore/utils/a/b;->a:Lcom/comscore/a/b;

    new-instance v0, Lcom/comscore/utils/a/a;

    iget-object v1, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/comscore/utils/a/a;-><init>(Landroid/content/Context;Lcom/comscore/utils/l;)V

    iput-object v0, p0, Lcom/comscore/utils/a/b;->m:Lcom/comscore/utils/a/a;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/comscore/utils/a/b;->i:Z

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v3, "md5RawCrossPublisherId"

    invoke-virtual {v0, v3}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    .line 2000
    iget-object v5, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v6, "md5RawCrossPublisherId"

    invoke-virtual {v5, v6}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 0
    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "crossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/comscore/utils/a/b;->i:Z

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    if-eq v3, v2, :cond_3

    iput-boolean v1, p0, Lcom/comscore/utils/a/b;->j:Z

    iput-boolean v0, p0, Lcom/comscore/utils/a/b;->k:Z

    :cond_3
    invoke-static {p1}, Lcom/comscore/utils/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "crossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "md5RawCrossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/comscore/utils/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/a/c;->b(Landroid/content/Context;)Lcom/comscore/android/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/comscore/utils/a/b;->i:Z

    invoke-direct {p0, v3, v4}, Lcom/comscore/utils/a/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/comscore/android/a/b;->b()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/comscore/android/a/b;->c()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/a/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/utils/a/b;->m:Lcom/comscore/utils/a/a;

    invoke-virtual {v2, v1}, Lcom/comscore/utils/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v2, "crossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/comscore/utils/a/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/comscore/utils/a/b;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/comscore/utils/a/b;->l:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/comscore/utils/a/b;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/a/b;->h()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/a/b;->j:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/a/b;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/comscore/utils/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/comscore/utils/a/b;->h()V

    iget-boolean v0, p0, Lcom/comscore/utils/a/b;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comscore/utils/a/b;->k:Z

    if-nez v0, :cond_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "none"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/utils/a/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/comscore/utils/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/a/c;->c(Landroid/content/Context;)Lcom/comscore/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->g:Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/a/b;->m:Lcom/comscore/utils/a/a;

    invoke-virtual {v0}, Lcom/comscore/utils/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v2, "vid"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cs_c12u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/comscore/utils/a/b;->a:Lcom/comscore/a/b;

    sget-object v2, Lcom/comscore/b/d;->d:Lcom/comscore/b/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/comscore/a/b;->a(Lcom/comscore/b/d;Ljava/util/HashMap;Z)V

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    :cond_1
    const-string v0, "-cs"

    iget-object v1, p0, Lcom/comscore/utils/a/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/comscore/android/a/c;->c(Landroid/content/Context;)Lcom/comscore/android/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/comscore/android/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/comscore/utils/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/a/b;->d:Lcom/comscore/utils/l;

    const-string v1, "vid"

    iget-object v2, p0, Lcom/comscore/utils/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_2
    invoke-direct {p0}, Lcom/comscore/utils/a/b;->h()V

    goto/16 :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/a/b;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/a/b;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
