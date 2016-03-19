.class public Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;
.super Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextModeViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 685
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;->a:Landroid/widget/TextView;

    .line 686
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/MVPDConfig;)V
    .locals 2

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
