.class public abstract Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic e:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;->e:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    .line 286
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 287
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/cbs/app/view/model/VideoData;)V
.end method
