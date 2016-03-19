.class final Lcom/cbs/app/livetv/fragment/SignInFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/SignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignInFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$1;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$1;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->a(Lcom/cbs/app/livetv/fragment/SignInFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$1;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->a(Lcom/cbs/app/livetv/fragment/SignInFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/cbs/app/livetv/fragment/SignInFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
