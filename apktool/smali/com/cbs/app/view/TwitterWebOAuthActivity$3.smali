.class final Lcom/cbs/app/view/TwitterWebOAuthActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/TwitterWebOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/TwitterWebOAuthActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$3;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$3;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->finish()V

    .line 140
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
