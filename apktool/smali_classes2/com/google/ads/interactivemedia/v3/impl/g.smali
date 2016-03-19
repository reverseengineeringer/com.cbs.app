.class public final Lcom/google/ads/interactivemedia/v3/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b;


# static fields
.field private static f:I


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/a/d;

.field private b:Lcom/google/ads/interactivemedia/v3/b/a/c;

.field private c:Landroid/view/ViewGroup;

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/google/ads/interactivemedia/v3/impl/g;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Ljava/util/Collection;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/b/a/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/view/ViewGroup;

    .line 69
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/d;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    .line 42
    return-void
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/b/a/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/b/a/c;

    return-object v0
.end method

.method public final c()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 89
    new-instance v1, Lcom/google/c/b/u$a;

    invoke-direct {v1}, Lcom/google/c/b/u$a;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    sget v3, Lcom/google/ads/interactivemedia/v3/impl/g;->f:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/google/ads/interactivemedia/v3/impl/g;->f:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "compSlot_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/c/b/u$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Lcom/google/c/b/u$a;->a()Lcom/google/c/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/Map;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/Map;

    return-object v0
.end method
