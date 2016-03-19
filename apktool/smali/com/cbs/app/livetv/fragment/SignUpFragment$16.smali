.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$16;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$16;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a(Lcom/cbs/app/livetv/fragment/SignUpFragment;Lcom/cbs/app/livetv/model/SocialNames;)V

    .line 200
    return-void
.end method
