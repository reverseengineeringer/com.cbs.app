.class public Lnet/hockeyapp/android/ExpiryInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/16 v0, 0xd

    .line 1074
    invoke-static {}, Lnet/hockeyapp/android/i;->b()Lnet/hockeyapp/android/j;

    move-result-object v1

    .line 1075
    invoke-static {v1, v0}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2064
    new-instance v0, Lnet/hockeyapp/android/views/ExpiryInfoView;

    const/16 v1, 0xe

    .line 2074
    invoke-static {}, Lnet/hockeyapp/android/i;->b()Lnet/hockeyapp/android/j;

    move-result-object v2

    .line 2075
    invoke-static {v2, v1}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    .line 2064
    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/views/ExpiryInfoView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setContentView(Landroid/view/View;)V

    .line 56
    return-void
.end method
