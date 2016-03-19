.class final Lcom/cbs/app/livetv/fragment/SignInFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 191
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->a:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/SignInFragment;->a(Lcom/cbs/app/livetv/fragment/SignInFragment;Lcom/cbs/app/livetv/model/SocialNames;)V

    .line 195
    return-void
.end method
