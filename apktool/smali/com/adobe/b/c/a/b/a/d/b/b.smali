.class public final Lcom/adobe/b/c/a/b/a/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/c/a/b/a/d/a/f;

.field private b:Lcom/adobe/b/c/a/b/a/d/a/c;

.field private c:Lcom/adobe/b/c/a/b/a/d/a/j;

.field private d:Lcom/adobe/b/c/a/b/a/d/a/g;

.field private e:Lcom/adobe/b/a/b;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/f;-><init>(Lcom/adobe/b/c/a/b/a/d/a/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    .line 45
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    invoke-virtual {v0, p2}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(J)V

    .line 47
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->c(J)V

    .line 48
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    invoke-virtual {v0, p3, p4}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(D)V

    .line 50
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/a/c;

    iget-object v1, p1, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/c;-><init>(Lcom/adobe/b/c/a/b/a/d/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    .line 51
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/a/j;

    iget-object v1, p1, Lcom/adobe/b/c/a/b/a/b/a;->d:Lcom/adobe/b/c/a/b/a/d/a/j;

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/j;-><init>(Lcom/adobe/b/c/a/b/a/d/a/j;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->c:Lcom/adobe/b/c/a/b/a/d/a/j;

    .line 52
    new-instance v0, Lcom/adobe/b/c/a/b/a/d/a/g;

    iget-object v1, p1, Lcom/adobe/b/c/a/b/a/b/a;->e:Lcom/adobe/b/c/a/b/a/d/a/g;

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/b/a/d/a/g;-><init>(Lcom/adobe/b/c/a/b/a/d/a/g;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->d:Lcom/adobe/b/c/a/b/a/d/a/g;

    .line 53
    iput-object p5, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->f:Ljava/lang/Object;

    .line 54
    iput-object p6, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->e:Lcom/adobe/b/a/b;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lcom/adobe/b/c/a/b/a/d/a/f;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->a:Lcom/adobe/b/c/a/b/a/d/a/f;

    return-object v0
.end method

.method public final b()Lcom/adobe/b/c/a/b/a/d/a/c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    return-object v0
.end method

.method public final c()Lcom/adobe/b/c/a/b/a/d/a/j;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->c:Lcom/adobe/b/c/a/b/a/d/a/j;

    return-object v0
.end method

.method public final d()Lcom/adobe/b/c/a/b/a/d/a/g;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->d:Lcom/adobe/b/c/a/b/a/d/a/g;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/d/b/b;->e:Lcom/adobe/b/a/b;

    return-object v0
.end method
