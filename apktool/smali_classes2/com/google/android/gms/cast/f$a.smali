.class public final Lcom/google/android/gms/cast/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/cast/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/f;-><init>(Lcom/google/android/gms/cast/d;B)V

    iput-object v0, p0, Lcom/google/android/gms/cast/f$a;->a:Lcom/google/android/gms/cast/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/f$a;->a:Lcom/google/android/gms/cast/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/f;->b()V

    iget-object v0, p0, Lcom/google/android/gms/cast/f$a;->a:Lcom/google/android/gms/cast/f;

    return-object v0
.end method
