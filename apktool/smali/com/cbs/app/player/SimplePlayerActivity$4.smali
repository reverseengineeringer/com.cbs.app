.class final Lcom/cbs/app/player/SimplePlayerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/player/SimplePlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/player/SimplePlayerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/player/SimplePlayerActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cbs/app/player/SimplePlayerActivity$4;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$4;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-static {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->b(Lcom/cbs/app/player/SimplePlayerActivity;)Lcom/cbs/app/player/SystemUiHider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/player/SystemUiHider;->c()V

    .line 142
    return-void
.end method
