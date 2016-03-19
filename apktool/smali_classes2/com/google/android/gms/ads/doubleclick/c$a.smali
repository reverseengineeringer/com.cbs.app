.class public final Lcom/google/android/gms/ads/doubleclick/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/z$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/z$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/z$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/c$a;->a:Lcom/google/android/gms/ads/internal/client/z$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/doubleclick/c$a;)Lcom/google/android/gms/ads/internal/client/z$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/c$a;->a:Lcom/google/android/gms/ads/internal/client/z$a;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/doubleclick/c;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/c;-><init>(Lcom/google/android/gms/ads/doubleclick/c$a;B)V

    return-object v0
.end method
