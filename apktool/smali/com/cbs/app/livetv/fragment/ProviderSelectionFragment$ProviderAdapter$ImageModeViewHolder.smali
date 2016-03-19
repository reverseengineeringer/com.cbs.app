.class public Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;
.super Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageModeViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 706
    const v0, 0x7f0f02b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    .line 707
    const v0, 0x7f0f02b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    .line 708
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/MVPDConfig;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 711
    if-eqz p1, :cond_3

    .line 712
    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getFilepathAdobeLogoOverride()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, v4, v4, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 723
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeLogoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, v4, v4, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 727
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "special_case"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 734
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
