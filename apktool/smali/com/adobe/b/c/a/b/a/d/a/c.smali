.class public final Lcom/adobe/b/c/a/b/a/d/a/c;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:Lcom/adobe/b/c/a/b/a/d/a/a;

.field private f:Lcom/adobe/b/c/a/b/a/d/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;-><init>(Lcom/adobe/b/c/a/b/a/d/a/c;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string v0, "asset"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 42
    if-eqz p1, :cond_2

    .line 1066
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->b(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->c(Ljava/lang/String;)V

    .line 1093
    iget-wide v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->d:D

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(D)V

    .line 1102
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->e:Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 48
    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->e:Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 49
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 2111
    :cond_0
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->f:Lcom/adobe/b/c/a/b/a/d/a/d;

    .line 52
    if-eqz v0, :cond_1

    .line 3111
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/c;->f:Lcom/adobe/b/c/a/b/a/d/a/d;

    .line 53
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/d;)V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->a:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->b:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->c:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->d:D

    .line 60
    iput-object v2, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->e:Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 61
    iput-object v2, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->f:Lcom/adobe/b/c/a/b/a/d/a/d;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->d:D

    .line 98
    const-string v0, "duration"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final a(Lcom/adobe/b/c/a/b/a/d/a/a;)V
    .locals 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->e:Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 107
    const-string v0, "ad_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public final a(Lcom/adobe/b/c/a/b/a/d/a/d;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->f:Lcom/adobe/b/c/a/b/a/d/a/d;

    .line 116
    const-string v0, "chapter_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->a:Ljava/lang/String;

    .line 71
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->b:Ljava/lang/String;

    .line 80
    const-string v0, "video_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->d:D

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->c:Ljava/lang/String;

    .line 89
    const-string v0, "publisher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public final d()Lcom/adobe/b/c/a/b/a/d/a/a;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->e:Lcom/adobe/b/c/a/b/a/d/a/a;

    return-object v0
.end method

.method public final e()Lcom/adobe/b/c/a/b/a/d/a/d;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/c;->f:Lcom/adobe/b/c/a/b/a/d/a/d;

    return-object v0
.end method
