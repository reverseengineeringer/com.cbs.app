.class final Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;
.super Lcom/google/android/gms/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/b",
        "<",
        "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/a/e",
            "<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/a/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 0
    .line 1000
    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g()V

    .line 0
    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a:Lcom/google/android/gms/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/c;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/ak;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/o;->c(Lcom/google/android/gms/a/c;)Lcom/google/android/gms/maps/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a:Lcom/google/android/gms/a/e;

    new-instance v2, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;

    iget-object v3, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/h;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/a/e;->a(Lcom/google/android/gms/a/a;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/e;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a()Lcom/google/android/gms/a/a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->a(Lcom/google/android/gms/maps/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/e",
            "<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a:Lcom/google/android/gms/a/e;

    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g()V

    return-void
.end method
