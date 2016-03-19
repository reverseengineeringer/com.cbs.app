.class final Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-virtual {v0, p3}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->a(I)V

    .line 67
    return-void
.end method
