.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    .line 794
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    .line 787
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-virtual {v1, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    const/16 v0, 0x834

    if-eq p2, v0, :cond_0

    const/16 v0, 0x836

    if-ne p2, v0, :cond_1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    .line 771
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-virtual {v1, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V

    .line 775
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V

    .line 781
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;

    .line 758
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V

    .line 759
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 763
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 751
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 742
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->e()V

    .line 744
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 745
    return-void
.end method
