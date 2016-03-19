.class final Lcom/cbs/app/view/PopupActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/PopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/PopupActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/PopupActivity;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cbs/app/view/PopupActivity$1;->a:Lcom/cbs/app/view/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/PopupActivity$1;->a:Lcom/cbs/app/view/PopupActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/PopupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/PopupActivity$1;->a:Lcom/cbs/app/view/PopupActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/PopupActivity;->finish()V

    .line 27
    :cond_0
    return-void
.end method
