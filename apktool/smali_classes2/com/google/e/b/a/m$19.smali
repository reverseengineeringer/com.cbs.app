.class final Lcom/google/e/b/a/m$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/e;",
            "Lcom/google/e/c/a",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 758
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_1

    .line 759
    :cond_0
    const/4 v0, 0x0

    .line 764
    :goto_0
    return-object v0

    .line 761
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 764
    :cond_2
    new-instance v1, Lcom/google/e/b/a/m$a;

    invoke-direct {v1, v0}, Lcom/google/e/b/a/m$a;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0
.end method
