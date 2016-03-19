.class public final Lcom/adobe/b/c/a/b/a/d/a/k;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/k;-><init>(Lcom/adobe/b/c/a/b/a/d/a/k;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/k;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "user"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/k;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/k;->a(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/k;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/k;->b(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/k;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/k;->c(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->a:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->b:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->a:Ljava/lang/String;

    .line 54
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->b:Ljava/lang/String;

    .line 63
    const-string v0, "aid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/k;->c:Ljava/lang/String;

    .line 72
    const-string v0, "mid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
