.class public final Lcom/google/android/gms/ads/internal/client/z;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/z$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Date;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/location/Location;

.field private final g:Z

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/m;",
            ">;",
            "Lcom/google/android/gms/ads/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/android/gms/ads/search/a;

.field private final m:I

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/os/Bundle;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/z$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/z;-><init>(Lcom/google/android/gms/ads/internal/client/z$a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/z$a;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->a(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->b:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->b(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->c(Lcom/google/android/gms/ads/internal/client/z$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/z;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->d(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->e(Lcom/google/android/gms/ads/internal/client/z$a;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->f:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->f(Lcom/google/android/gms/ads/internal/client/z$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/z;->g:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->g(Lcom/google/android/gms/ads/internal/client/z$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->h:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->h(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->i:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->i(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->j(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->l:Lcom/google/android/gms/ads/search/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->k(Lcom/google/android/gms/ads/internal/client/z$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/z;->m:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->l(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->n:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->m(Lcom/google/android/gms/ads/internal/client/z$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->o:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/z$a;->n(Lcom/google/android/gms/ads/internal/client/z$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->p:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->n:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/z;->d:I

    return v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/z;->g:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/search/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->l:Lcom/google/android/gms/ads/search/a;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/m;",
            ">;",
            "Lcom/google/android/gms/ads/b/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/z;->m:I

    return v0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/z;->p:Ljava/util/Set;

    return-object v0
.end method
