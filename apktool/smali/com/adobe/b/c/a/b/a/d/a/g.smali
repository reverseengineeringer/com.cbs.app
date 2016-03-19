.class public final Lcom/adobe/b/c/a/b/a/d/a/g;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:J

.field private c:D

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/g;-><init>(Lcom/adobe/b/c/a/b/a/d/a/g;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/g;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    const-string v0, "stream"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_0

    .line 1056
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/g;->b:J

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(J)V

    .line 1065
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/g;->c:D

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(D)V

    .line 1074
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/g;->d:J

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/g;->b(J)V

    .line 1083
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/g;->e:J

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/g;->c(J)V

    .line 44
    iget-boolean v0, p1, Lcom/adobe/b/c/a/b/a/d/a/g;->a:Z

    iput-boolean v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->a:Z

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->b:J

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->c:D

    .line 48
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->d:J

    .line 49
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->e:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->b:J

    return-wide v0
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->c:D

    .line 70
    const-string v0, "fps"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->b:J

    .line 61
    const-string v0, "bitrate"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->c:D

    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->d:J

    .line 79
    const-string v0, "dropped_frames"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->d:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->e:J

    .line 88
    const-string v0, "startup_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/g;->e:J

    return-wide v0
.end method
