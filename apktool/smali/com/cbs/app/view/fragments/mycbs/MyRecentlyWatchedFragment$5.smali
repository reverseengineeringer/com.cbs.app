.class final Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;->b:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 177
    :cond_0
    return-void
.end method
