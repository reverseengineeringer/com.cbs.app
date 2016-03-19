.class public abstract Lcom/google/android/gms/location/places/internal/h;
.super Lcom/google/android/gms/common/data/e;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "SafeDataBufferRef"

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/h;->c:Ljava/lang/String;

    return-void
.end method
