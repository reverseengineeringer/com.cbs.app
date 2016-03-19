.class public Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerSpacer"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 532
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 537
    return-void
.end method
