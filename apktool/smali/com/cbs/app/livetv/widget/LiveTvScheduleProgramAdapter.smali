.class public Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;
.super Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
        "<",
        "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
        "Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/cbs/app/view/model/Affiliate;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;-><init>(I)V

    .line 41
    iput-boolean v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->d:Z

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;-><init>()V

    .line 45
    iput p1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 31
    check-cast p1, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;

    .line 1055
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->b:Lcom/cbs/app/view/model/Affiliate;

    iget-boolean v2, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->d:Z

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->a(Ljava/lang/Object;ILcom/cbs/app/view/model/Affiliate;Z)V

    .line 31
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 31
    .line 2050
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a:I

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;-><init>(Landroid/view/View;I)V

    .line 31
    return-object v0
.end method

.method public setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->b:Lcom/cbs/app/view/model/Affiliate;

    .line 60
    return-void
.end method

.method public setIsMvpd(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->d:Z

    .line 64
    return-void
.end method
