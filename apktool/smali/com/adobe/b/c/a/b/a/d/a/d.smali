.class public final Lcom/adobe/b/c/a/b/a/d/a/d;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/d;-><init>(Lcom/adobe/b/c/a/b/a/d/a/d;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/d;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    const-string v0, "stream"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_0

    .line 1058
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/d;->b(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/d;->c(Ljava/lang/String;)V

    .line 1085
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->d:J

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(J)V

    .line 1094
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->e:D

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(D)V

    .line 1103
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/d;->f:D

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->b(D)V

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->a:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->b:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->c:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->d:J

    .line 52
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->e:D

    .line 53
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->f:D

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->d:J

    return-wide v0
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->e:D

    .line 99
    const-string v0, "chapter_length"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->d:J

    .line 90
    const-string v0, "chapter_pos"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->a:Ljava/lang/String;

    .line 63
    const-string v0, "chapter_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final b(D)V
    .locals 3

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->f:D

    .line 108
    const-string v0, "chapter_offset"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->b:Ljava/lang/String;

    .line 72
    const-string v0, "chapter_sid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/d;->c:Ljava/lang/String;

    .line 81
    const-string v0, "chapter_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method
