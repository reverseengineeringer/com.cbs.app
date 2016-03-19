.class final Lcom/cbs/app/view/SVODPopupHelper$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 832
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 833
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 835
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upsell_dialog_seen"

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$13;->c:Landroid/content/Context;

    const-string v1, "CBS ALL ACCESS Sign In"

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    return-void
.end method
