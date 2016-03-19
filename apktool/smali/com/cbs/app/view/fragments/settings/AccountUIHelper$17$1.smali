.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a(Lcom/cbs/app/androiddata/ResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;->a:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1078
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1079
    return-void
.end method
