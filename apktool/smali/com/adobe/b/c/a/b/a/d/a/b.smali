.class public final Lcom/adobe/b/c/a/b/a/d/a/b;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/b;-><init>(Lcom/adobe/b/c/a/b/a/d/a/b;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/b;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "sc"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_0

    .line 1048
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/b;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/b;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/b;->b(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/b;->c:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/Boolean;)V

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->a:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->c:Ljava/lang/Boolean;

    .line 71
    const-string v0, "ssl"

    sget-object v1, Lcom/adobe/b/c/a/b/a/d/a/e$b;->a:Lcom/adobe/b/c/a/b/a/d/a/e$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->a:Ljava/lang/String;

    .line 53
    const-string v0, "rsid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/b;->b:Ljava/lang/String;

    .line 62
    const-string v0, "tracking_server"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
