.class public Lcom/adobe/b/c/a/b/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/a/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Lcom/adobe/b/a/b/a;

.field private final j:Lcom/adobe/b/c/a/b/a/d/c/b;

.field private final k:Lcom/adobe/b/a/b;

.field private final l:Lcom/adobe/b/a/b;

.field private final m:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/adobe/b/c/a/b/a/e/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/e/a$1;-><init>(Lcom/adobe/b/c/a/b/a/e/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->k:Lcom/adobe/b/a/b;

    .line 126
    new-instance v0, Lcom/adobe/b/c/a/b/a/e/a$2;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/e/a$2;-><init>(Lcom/adobe/b/c/a/b/a/e/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->l:Lcom/adobe/b/a/b;

    .line 182
    new-instance v0, Lcom/adobe/b/c/a/b/a/e/a$3;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/e/a$3;-><init>(Lcom/adobe/b/c/a/b/a/e/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->m:Lcom/adobe/b/a/b;

    .line 60
    iput-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->c:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->d:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->e:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/a/e/a;->f:Z

    .line 66
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/a/e/a;->g:Z

    .line 67
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/a/e/a;->h:Z

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the channel object cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a;->i:Lcom/adobe/b/a/b/a;

    .line 74
    if-nez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/e/a;->a:Lcom/adobe/b/a/c;

    .line 78
    const-class v0, Lcom/adobe/b/c/a/b/a/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->b:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/c/b;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a;->a:Lcom/adobe/b/a/c;

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/b/a/d/c/b;-><init>(Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->j:Lcom/adobe/b/c/a/b/a/d/c/b;

    .line 1266
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->i:Lcom/adobe/b/a/b/a;

    const-string v1, "api:config"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->k:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 1267
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->i:Lcom/adobe/b/a/b/a;

    const-string v1, "filter:data_available"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->l:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 1268
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->i:Lcom/adobe/b/a/b/a;

    const-string v1, "clock:check_status.tick"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a;->m:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    .line 2254
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2255
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2260
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 2256
    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2260
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/e/a;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/adobe/b/c/a/b/a/e/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->a:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/adobe/b/c/a/b/a/e/a;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/adobe/b/c/a/b/a/e/a;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/c/a/b/a/d/c/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->j:Lcom/adobe/b/c/a/b/a/d/c/b;

    return-object v0
.end method

.method static synthetic f(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/adobe/b/c/a/b/a/e/a;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/b/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->i:Lcom/adobe/b/a/b/a;

    return-object v0
.end method

.method static synthetic j(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a;->e:Ljava/lang/String;

    return-object v0
.end method
