.class final Lcom/cbs/app/service/AdServiceImpl$1;
.super Lcom/google/android/gms/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/AdServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/AdServiceImpl;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/AdServiceImpl;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/service/AdServiceImpl$1;->a:Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->a()V

    .line 60
    sget-object v0, Lcom/cbs/app/service/AdServiceImpl;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/a;->a(I)V

    .line 54
    sget-object v0, Lcom/cbs/app/service/AdServiceImpl;->a:Ljava/lang/String;

    .line 55
    return-void
.end method
