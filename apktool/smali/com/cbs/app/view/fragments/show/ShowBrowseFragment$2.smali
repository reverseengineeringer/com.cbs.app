.class final Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
