.class public Lcom/cbs/app/view/fragments/EventsFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    return-object v0
.end method
