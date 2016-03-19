.class final Lcom/cbs/app/view/AbstractFragmentActivity$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/AbstractFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/AbstractFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/AbstractFragmentActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cbs/app/view/AbstractFragmentActivity$1;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V

    .line 62
    sget-object v0, Lcom/cbs/app/view/AbstractFragmentActivity;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c(I)V

    .line 75
    sget-object v0, Lcom/cbs/app/view/AbstractFragmentActivity;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->d()V

    .line 68
    sget-object v0, Lcom/cbs/app/view/AbstractFragmentActivity;->a:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity$1;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->b()V

    .line 70
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->e()V

    .line 82
    sget-object v0, Lcom/cbs/app/view/AbstractFragmentActivity;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity$1;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    const v2, 0x7f0f02bf

    invoke-virtual {v0, v2}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSMiniController;

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 86
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSMiniController;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity$1;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->c()V

    .line 89
    return-void
.end method
