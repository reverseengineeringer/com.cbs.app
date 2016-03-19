.class public final Lcom/google/android/gms/ads/internal/j;
.super Lcom/google/android/gms/ads/internal/client/s$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/q;

.field private b:Lcom/google/android/gms/internal/bv;

.field private c:Lcom/google/android/gms/internal/bw;

.field private d:Lcom/google/android/gms/internal/jp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/jp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/dl;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/s$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/j;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/j;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/j;->h:Lcom/google/android/gms/internal/dl;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/j;->j:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/j;->e:Lcom/google/android/gms/internal/jp;

    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/j;->d:Lcom/google/android/gms/internal/jp;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/client/r;
    .locals 11

    new-instance v0, Lcom/google/android/gms/ads/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/j;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/j;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/j;->h:Lcom/google/android/gms/internal/dl;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/j;->j:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/j;->a:Lcom/google/android/gms/ads/internal/client/q;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/j;->b:Lcom/google/android/gms/internal/bv;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/j;->c:Lcom/google/android/gms/internal/bw;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/j;->e:Lcom/google/android/gms/internal/jp;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/j;->d:Lcom/google/android/gms/internal/jp;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/j;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/q;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/j;->a:Lcom/google/android/gms/ads/internal/client/q;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/j;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/j;->b:Lcom/google/android/gms/internal/bv;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/j;->c:Lcom/google/android/gms/internal/bw;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/by;Lcom/google/android/gms/internal/bx;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/j;->e:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/j;->d:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/jp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
