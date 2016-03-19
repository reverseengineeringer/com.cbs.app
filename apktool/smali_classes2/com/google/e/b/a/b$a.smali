.class final Lcom/google/e/b/a/b$a;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/e/s",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/e/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/s",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/e/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/e/e;Ljava/lang/reflect/Type;Lcom/google/e/s;Lcom/google/e/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/e;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/e/s",
            "<TE;>;",
            "Lcom/google/e/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    .line 67
    new-instance v0, Lcom/google/e/b/a/l;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/e/b/a/l;-><init>(Lcom/google/e/e;Lcom/google/e/s;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/e/b/a/b$a;->a:Lcom/google/e/s;

    .line 69
    iput-object p4, p0, Lcom/google/e/b/a/b$a;->b:Lcom/google/e/b/h;

    .line 70
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    .line 1073
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1074
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1075
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/google/e/b/a/b$a;->b:Lcom/google/e/b/h;

    invoke-interface {v0}, Lcom/google/e/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1079
    invoke-virtual {p1}, Lcom/google/e/d/a;->a()V

    .line 1080
    :goto_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/google/e/b/a/b$a;->a:Lcom/google/e/s;

    invoke-virtual {v1, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 1082
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1084
    :cond_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 60
    check-cast p2, Ljava/util/Collection;

    .line 1089
    if-nez p2, :cond_0

    .line 1090
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    .line 1091
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/c;->b()Lcom/google/e/d/c;

    .line 1095
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1096
    iget-object v2, p0, Lcom/google/e/b/a/b$a;->a:Lcom/google/e/s;

    invoke-virtual {v2, p1, v1}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    goto :goto_1

    .line 1098
    :cond_1
    invoke-virtual {p1}, Lcom/google/e/d/c;->c()Lcom/google/e/d/c;

    goto :goto_0
.end method
