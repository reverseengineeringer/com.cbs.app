.class public Lcom/cbs/app/view/fragments/AdFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# instance fields
.field private h:Landroid/view/ViewGroup;

.field private i:J

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->i:J

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/AdFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const-string v1, "showId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/AdFragment;->i:J

    .line 29
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->j:Ljava/lang/String;

    .line 32
    :cond_0
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 34
    const v0, 0x7f0f00ad

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    .line 36
    iget-wide v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 37
    iget-wide v4, p0, Lcom/cbs/app/view/fragments/AdFragment;->i:J

    iget-object v6, p0, Lcom/cbs/app/view/fragments/AdFragment;->j:Ljava/lang/String;

    .line 1052
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 1053
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/AdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-virtual/range {v1 .. v6}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Landroid/view/ViewGroup;JLjava/lang/String;)V

    .line 41
    :goto_0
    return-object v7

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->j:Ljava/lang/String;

    .line 2046
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 2047
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/AdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cbs/app/service/AdServiceImpl;->b(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->c(Landroid/view/ViewGroup;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 80
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 65
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->c(Landroid/view/ViewGroup;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    .line 70
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->b(Landroid/view/ViewGroup;)V

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/AdFragment;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/view/ViewGroup;)V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 89
    return-void
.end method
