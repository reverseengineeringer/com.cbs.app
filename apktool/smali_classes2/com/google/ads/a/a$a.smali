.class final Lcom/google/ads/a/a$a;
.super Lcom/google/android/gms/ads/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/ads/formats/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/b/j;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/a$a;->d:Lcom/google/android/gms/ads/formats/c;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->e()Lcom/google/android/gms/ads/formats/a$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->a(Lcom/google/android/gms/ads/formats/a$a;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/a$a;->a(D)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a$a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/a/a$a;->a()V

    invoke-virtual {p0}, Lcom/google/ads/a/a$a;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/google/ads/a/a$a;->d:Lcom/google/android/gms/ads/formats/c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_0
    return-void
.end method
