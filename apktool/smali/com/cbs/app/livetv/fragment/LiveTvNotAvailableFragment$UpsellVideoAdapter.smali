.class public Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;
.super Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpsellVideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;,
        Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
        "<",
        "Lcom/cbs/app/view/model/VideoData;",
        "Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    .line 264
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;-><init>()V

    .line 265
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 260
    check-cast p1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;

    .line 1279
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 1280
    invoke-virtual {p1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 260
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 260
    .line 2274
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;Landroid/view/View;)V

    .line 260
    return-object v0
.end method
