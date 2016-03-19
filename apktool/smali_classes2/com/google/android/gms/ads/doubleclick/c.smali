.class public final Lcom/google/android/gms/ads/doubleclick/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/doubleclick/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/client/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/z;->a:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/doubleclick/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/doubleclick/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/z;

    invoke-static {p1}, Lcom/google/android/gms/ads/doubleclick/c$a;->a(Lcom/google/android/gms/ads/doubleclick/c$a;)Lcom/google/android/gms/ads/internal/client/z$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/z;-><init>(Lcom/google/android/gms/ads/internal/client/z$a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/c;->b:Lcom/google/android/gms/ads/internal/client/z;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/doubleclick/c$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/doubleclick/c;-><init>(Lcom/google/android/gms/ads/doubleclick/c$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/client/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/c;->b:Lcom/google/android/gms/ads/internal/client/z;

    return-object v0
.end method
