.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 471
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "syncbackurl"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->b:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;->b:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setSyncbakHost(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 485
    return-void
.end method
