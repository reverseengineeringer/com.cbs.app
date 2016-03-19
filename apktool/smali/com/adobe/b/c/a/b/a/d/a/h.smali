.class public final Lcom/adobe/b/c/a/b/a/d/a/h;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;-><init>(Lcom/adobe/b/c/a/b/a/d/a/h;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/h;)V
    .locals 2

    .prologue
    .line 38
    const-string v0, "sp"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_0

    .line 1058
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;->b(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;->c(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;->d(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->e:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/h;->e(Ljava/lang/String;)V

    .line 1103
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/h;->f:J

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(J)V

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->a:Ljava/lang/String;

    .line 49
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->b:Ljava/lang/String;

    .line 50
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->c:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->d:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->e:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->f:J

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->f:J

    .line 108
    const-string v0, "hb_api_lvl"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->a:Ljava/lang/String;

    .line 63
    const-string v0, "ovp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->b:Ljava/lang/String;

    .line 72
    const-string v0, "sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->c:Ljava/lang/String;

    .line 81
    const-string v0, "channel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->d:Ljava/lang/String;

    .line 90
    const-string v0, "player_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/h;->e:Ljava/lang/String;

    .line 99
    const-string v0, "hb_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
