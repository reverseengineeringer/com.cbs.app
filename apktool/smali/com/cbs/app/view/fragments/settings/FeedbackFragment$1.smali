.class final Lcom/cbs/app/view/fragments/settings/FeedbackFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/FeedbackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$1;->a:Lcom/cbs/app/view/fragments/settings/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    return-void
.end method
