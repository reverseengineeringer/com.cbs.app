.class final Lcom/cbs/app/view/InterstitialAdManagerV2$1;
.super Lcom/google/android/gms/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/InterstitialAdManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->c()Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->b()V

    .line 31
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 38
    const-string v1, "onAdFailedToLoad (%s)"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1074
    packed-switch p1, :pswitch_data_0

    .line 1084
    const-string v0, "Unknown error"

    .line 38
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->c()Ljava/lang/String;

    .line 41
    return-void

    .line 1076
    :pswitch_0
    const-string v0, "Internal error"

    goto :goto_0

    .line 1078
    :pswitch_1
    const-string v0, "Invalid request"

    goto :goto_0

    .line 1080
    :pswitch_2
    const-string v0, "Network Error"

    goto :goto_0

    .line 1082
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->c()Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->c()Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->c()Ljava/lang/String;

    .line 68
    return-void
.end method
