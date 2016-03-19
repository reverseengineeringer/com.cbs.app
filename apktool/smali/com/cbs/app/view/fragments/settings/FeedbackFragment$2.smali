.class final Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/FeedbackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/FeedbackFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;->b:Lcom/cbs/app/view/fragments/settings/FeedbackFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 125
    return-void
.end method
