.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$4;
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
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->e:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->c:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->d:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->a:[Ljava/lang/String;

    aget-object v1, v0, p3

    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->b:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 382
    if-ne p3, v2, :cond_0

    .line 384
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->c:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_DEBUG_LOCATION_CUSTOM_LATITUDE"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->c:Landroid/content/SharedPreferences;

    const-string v4, "PREFS_DEBUG_LOCATION_CUSTOM_LONGITUDE"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->e:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v4, p3, v1, v0, v3}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 388
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->e:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p3, v2, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->e:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p3, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;->d:Landroid/widget/Button;

    if-ne p3, v2, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    return-void

    :cond_1
    move v0, v3

    .line 388
    goto :goto_0

    :cond_2
    move v0, v3

    .line 389
    goto :goto_1

    :cond_3
    move v2, v3

    .line 390
    goto :goto_2
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
    .line 395
    return-void
.end method
