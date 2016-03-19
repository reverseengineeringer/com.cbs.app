.class public final Lcom/google/ads/interactivemedia/v3/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/r$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/b/b;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/b/a/b;

.field private f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

.field private g:Ljava/lang/String;

.field private transient h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/r$a;->c:Lcom/google/ads/interactivemedia/v3/impl/r$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/b;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 133
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/b;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->b:Lcom/google/ads/interactivemedia/v3/b/b;

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/b/b;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->b:Lcom/google/ads/interactivemedia/v3/b/b;

    return-object v0
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/b/a/b;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Lcom/google/ads/interactivemedia/v3/b/a/b;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/impl/r$a;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

    return-object v0
.end method
