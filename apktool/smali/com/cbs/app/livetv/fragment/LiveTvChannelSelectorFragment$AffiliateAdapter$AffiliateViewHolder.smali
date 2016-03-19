.class public Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;
.super Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AffiliateViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;Landroid/view/View;)V

    .line 214
    const v0, 0x7f0f028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->c:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0f028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->b:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0f0289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->a:Landroid/widget/ImageView;

    .line 217
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/Affiliate;)V
    .locals 3

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 222
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Affiliate;->getAffiliateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Affiliate;->getAffiliateStation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    return-void
.end method
