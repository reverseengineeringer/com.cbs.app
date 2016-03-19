.class public abstract Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic e:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;->e:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    .line 200
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 201
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/cbs/app/view/model/Affiliate;)V
.end method
