.class public final Lcom/adobe/b/c/a/b/a/d/a/f;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/c/a/b/a/d/a/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/f;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    const-string v0, "event"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 55
    if-eqz p1, :cond_0

    .line 1076
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;)V

    .line 1085
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->b:J

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(J)V

    .line 1094
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->c:D

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(D)V

    .line 1103
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(Ljava/lang/String;)V

    .line 1112
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->e:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->c(Ljava/lang/String;)V

    .line 1121
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->f:J

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(J)V

    .line 1130
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/f;->g:J

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->c(J)V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->a:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->b:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->c:D

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->d:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->e:Ljava/lang/String;

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->f:J

    .line 70
    iput-wide v2, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->g:J

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->c:D

    .line 99
    const-string v0, "playhead"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->b:J

    .line 90
    const-string v0, "duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->a:Ljava/lang/String;

    .line 81
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->b:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->f:J

    .line 126
    const-string v0, "prev_ts"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->d:Ljava/lang/String;

    .line 108
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->c:D

    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->g:J

    .line 135
    const-string v0, "ts"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->e:Ljava/lang/String;

    .line 117
    const-string v0, "source"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/f;->g:J

    return-wide v0
.end method
