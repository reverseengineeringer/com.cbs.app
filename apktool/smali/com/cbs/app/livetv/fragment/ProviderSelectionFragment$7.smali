.class final Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$7;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$7;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->e(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method
