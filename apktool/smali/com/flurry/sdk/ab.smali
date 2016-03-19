.class public final Lcom/flurry/sdk/ab;
.super Lcom/flurry/sdk/ag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ab$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/flurry/sdk/ab$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.flurry.android.sdk.ActivityLifecycleEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
