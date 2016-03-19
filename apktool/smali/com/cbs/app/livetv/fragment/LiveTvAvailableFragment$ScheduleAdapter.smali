.class public Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;
.super Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScheduleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;,
        Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter",
        "<",
        "Lcom/cbs/app/livetv/model/LiveTvChannel;",
        "Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

.field private final f:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->b:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    .line 278
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;-><init>()V

    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->f:Ljava/text/SimpleDateFormat;

    .line 279
    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a:Landroid/content/Context;

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->f:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 273
    .line 2284
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateItemViewHolder() called with: parent = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], viewType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;Landroid/view/View;)V

    .line 273
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 273
    check-cast p1, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;

    .line 1290
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindItemViewHolder() called with: holder = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], position = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getHeaderCount()I

    move-result v0

    sub-int v0, p2, v0

    .line 1291
    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/model/LiveTvChannel;

    .line 1292
    invoke-virtual {p1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    .line 273
    return-void
.end method
