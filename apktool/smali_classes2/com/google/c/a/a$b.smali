.class final Lcom/google/c/a/a$b;
.super Lcom/google/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final q:Lcom/google/c/a/a;

.field final r:Lcom/google/c/a/a;


# direct methods
.method constructor <init>(Lcom/google/c/a/a;Lcom/google/c/a/a;)V
    .locals 2

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/a/a$b;-><init>(Lcom/google/c/a/a;Lcom/google/c/a/a;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method private constructor <init>(Lcom/google/c/a/a;Lcom/google/c/a/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0, p3}, Lcom/google/c/a/a;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/a;

    iput-object v0, p0, Lcom/google/c/a/a$b;->q:Lcom/google/c/a/a;

    .line 730
    invoke-static {p2}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/a;

    iput-object v0, p0, Lcom/google/c/a/a$b;->r:Lcom/google/c/a/a;

    .line 731
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/c/a/a;
    .locals 3

    .prologue
    .line 751
    new-instance v0, Lcom/google/c/a/a$b;

    iget-object v1, p0, Lcom/google/c/a/a$b;->q:Lcom/google/c/a/a;

    iget-object v2, p0, Lcom/google/c/a/a$b;->r:Lcom/google/c/a/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/c/a/a$b;-><init>(Lcom/google/c/a/a;Lcom/google/c/a/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(C)Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/c/a/a$b;->q:Lcom/google/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/c/a/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/a/a$b;->r:Lcom/google/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/c/a/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 723
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/a;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
