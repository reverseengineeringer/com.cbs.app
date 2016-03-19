.class final Lcom/google/android/gms/internal/hu$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/hs;

.field private b:Lcom/google/android/gms/ads/internal/overlay/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/ads/internal/overlay/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hu$c;->a:Lcom/google/android/gms/internal/hs;

    iput-object p2, p0, Lcom/google/android/gms/internal/hu$c;->b:Lcom/google/android/gms/ads/internal/overlay/f;

    return-void
.end method


# virtual methods
.method public final e_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$c;->b:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->e_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$c;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->c()V

    return-void
.end method

.method public final f_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$c;->b:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->f_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$c;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->d()V

    return-void
.end method
