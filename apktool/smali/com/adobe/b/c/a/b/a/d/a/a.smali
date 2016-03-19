.class public final Lcom/adobe/b/c/a/b/a/d/a/a;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/a;-><init>(B)V

    .line 33
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 37
    const-string v0, "asset"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->a:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->b:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->c:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->d:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->e:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->a:Ljava/lang/String;

    .line 60
    const-string v0, "ad_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->b:Ljava/lang/String;

    .line 69
    const-string v0, "ad_sid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->e:Ljava/lang/String;

    .line 78
    const-string v0, "resolver"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->c:Ljava/lang/String;

    .line 87
    const-string v0, "pod_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/a;->d:Ljava/lang/String;

    .line 96
    const-string v0, "pod_position"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    return-void
.end method
